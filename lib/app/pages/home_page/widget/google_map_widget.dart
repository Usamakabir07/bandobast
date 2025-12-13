// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:bandobast/app/utils/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GoogleMapWidget extends HookWidget {
  final ValueNotifier<double> lat;
  final ValueNotifier<double> lng;
  final bool isSelectionMode;
  final Function(double lat, double lng)? onLocationSelected;

  const GoogleMapWidget({
    super.key,
    required this.lat,
    required this.lng,
    this.isSelectionMode = false,
    this.onLocationSelected,
  });

  @override
  Widget build(BuildContext context) {
    final mapController = useState<GoogleMapController?>(null);
    final marker = useState<Marker?>(null);
    final currentPosition = useState<LatLng?>(null);
    final centerPosition = useState<LatLng?>(null);

    // // ✅ NEW: track real user dragging
    // final isUserDragging = useState(false);

    final defaultPosition = LatLng(33.6844, 73.0479);
    final initialPosition = useState<LatLng>(defaultPosition);

    Future<void> getCurrentLocation() async {
      bool allowed = await checkLocationPermissions();
      if (!allowed) return;

      Position pos = await Geolocator.getCurrentPosition();

      final newPosition = LatLng(pos.latitude, pos.longitude);
      initialPosition.value = newPosition;
      currentPosition.value = newPosition;

      if (!isSelectionMode) {
        marker.value = Marker(
          markerId: const MarkerId("current"),
          position: newPosition,
          infoWindow: InfoWindow(title: "You are here"),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        );
      }

      final controller = mapController.value;
      if (controller != null) {
        await controller.animateCamera(
          CameraUpdate.newLatLngZoom(newPosition, 15),
        );
      }
    }

    useEffect(() {
      Future.microtask(() async {
        await getCurrentLocation();
      });
      return null;
    }, []);

    // Autocomplete updates (unchanged)
    useEffect(() {
      if (isSelectionMode) return null;
      if (lat.value == 0 || lng.value == 0) return null;

      Future.microtask(() async {
        final controller = mapController.value;
        if (controller == null) return;

        final newPos = LatLng(lat.value, lng.value);
        marker.value = Marker(
          markerId: const MarkerId("selected"),
          position: newPos,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        );

        await controller.animateCamera(
          CameraUpdate.newLatLngZoom(newPos, 15),
        );
      });

      return null;
    }, [lat.value, lng.value, isSelectionMode]);

    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: initialPosition.value,
            zoom: 14,
          ),
          markers:
              (!isSelectionMode && marker.value != null) ? {marker.value!} : {},
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) {
            mapController.value = controller;
          },

          /// ✅ USER STARTED DRAGGING
          onCameraMoveStarted: () {
            if (onLocationSelected != null) {
              // Signal "drag started"
              onLocationSelected!(-999, -999);
            }
          },

          /// Camera moving
          onCameraMove: (position) {
            centerPosition.value = position.target;
          },

          /// ✅ ONLY FIRE WHEN USER FINISHED DRAGGING
          onCameraIdle: () {
            if (centerPosition.value != null && onLocationSelected != null) {
              onLocationSelected!(
                centerPosition.value!.latitude,
                centerPosition.value!.longitude,
              );
            }
          },
        ),

        // Current Location Button (unchanged)
        Positioned(
          top: isSelectionMode
              ? MediaQuery.of(context).size.height * double08
              : MediaQuery.of(context).size.height * double045,
          right: padding16,
          child: Material(
            elevation: elevation4,
            borderRadius: BorderRadius.circular(borderRadius30),
            child: InkWell(
              onTap: getCurrentLocation,
              borderRadius: BorderRadius.circular(borderRadius30),
              child: CircleAvatar(
                radius: radius22,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.my_location,
                  color: AppColors.seaGreen,
                  size: iconSize32,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
