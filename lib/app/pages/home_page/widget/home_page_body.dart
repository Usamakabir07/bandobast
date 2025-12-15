import 'dart:developer';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/pages/home_page/widget/google_map_widget.dart';
import 'package:bandobast/app/pages/home_page/widget/request_list_widget.dart';
import 'package:bandobast/app/pages/home_page/widget/request_sheet.dart';
import 'package:bandobast/app/pages/home_page/widget/search_sheet.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geocoding/geocoding.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/dimensions.dart';

class HomePageBody extends HookWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final addressController = useTextEditingController();
    final address = useState("");
    final formattedAddress = useState("");
    final lat = useState(0.0);
    final lng = useState(0.0);

    final focusNode = useFocusNode();
    final sheetController = useMemoized(() => DraggableScrollableController());

    // Mode states
    final isMapSelectionMode = useState(false);
    final showRequests = useState(false);
    final showRequestSheet = useState(false);
    final selectedAddress = useState<String?>(null);
    final isLoadingAddress = useState(false);

    // Prevent duplicate fetches
    final lastFetchedLat = useState<double?>(null);
    final lastFetchedLng = useState<double?>(null);

    final isManuallySelected = useState(false);

    // Request form controllers
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final feesController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    useEffect(() {
      void listener() {
        if (focusNode.hasFocus) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (sheetController.isAttached) {
              sheetController.animateTo(
                0.95,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          });
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (sheetController.isAttached && !showRequestSheet.value) {
              sheetController.animateTo(
                0.4,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          });
        }
      }

      focusNode.addListener(listener);
      return () => focusNode.removeListener(listener);
    }, [focusNode, sheetController]);

    void onLocationSelected() {
      focusNode.unfocus();
      isMapSelectionMode.value = false;
      showRequestSheet.value = true;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (sheetController.isAttached) {
          sheetController.animateTo(
            0.7,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      });
    }

    void onMapLocationConfirmed() {
      if (selectedAddress.value == null) return;
      onLocationSelected();
    }

    Future<void> fetchAddressFromCoordinates(
      double latitude,
      double longitude,
    ) async {
      try {
        List<Placemark> placemarks =
            await placemarkFromCoordinates(latitude, longitude);

        selectedAddress.value = placemarks.first.street ??
            placemarks.first.locality ??
            placemarks.first.country ??
            "Unknown location";
      } catch (e) {
        selectedAddress.value = "Unable to fetch address";
      } finally {
        isLoadingAddress.value = false;
      }
    }

    void submitRequest() {
      if (formKey.currentState!.validate()) {
        final requestData = {
          'latitude': lat.value,
          'longitude': lng.value,
          'title': titleController.text,
          'description': descriptionController.text,
          'fees': feesController.text,
        };

        log('Request submitted: $requestData');

        showRequestSheet.value = false;
        showRequests.value = true;
        titleController.clear();
        descriptionController.clear();
        feesController.clear();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Request created successfully!')),
        );
      }
    }

    return Stack(
      children: [
        GoogleMapWidget(
          lat: lat,
          lng: lng,
          isSelectionMode: isMapSelectionMode.value,
          onLocationSelected: (selectedLat, selectedLng) {
            if (selectedLat == -999 && selectedLng == -999) {
              selectedAddress.value = null;
              isLoadingAddress.value = true;
              return;
            }
            lat.value = selectedLat;
            lng.value = selectedLng;
            fetchAddressFromCoordinates(selectedLat, selectedLng);
          },
        ),

        if (isMapSelectionMode.value)
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    if (isLoadingAddress.value && selectedAddress.value == null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          const SizedBox(width: 12),
                          Text('Fetching address', style: AppStyles.bodyMedium),
                        ],
                      )
                    else if (selectedAddress.value != null)
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              color: AppColors.seaGreen, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              selectedAddress.value!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyles.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )
                    else
                      Text(
                        'Drag the map to select location',
                        style: AppStyles.bodyMedium
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: AppElevatedButton(
                        onPressed: selectedAddress.value != null
                            ? onMapLocationConfirmed
                            : null,
                        color: selectedAddress.value != null
                            ? AppColors.seaGreen
                            : AppColors.silverMist,
                        text: 'Done',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        /// CENTER PIN
        if (isMapSelectionMode.value)
          const Center(
            child: Icon(Icons.location_on, size: 50, color: AppColors.seaGreen),
          ),

        /// BOTTOM SHEET
        if (!isMapSelectionMode.value)
          DraggableScrollableSheet(
            controller: sheetController,
            initialChildSize: showRequestSheet.value ? 0.9 : 0.4,
            minChildSize: showRequestSheet.value ? 0.9 : 0.4,
            maxChildSize: 0.95,
            snap: true,
            snapSizes: showRequestSheet.value ? [0.9, 0.95] : [0.4, 0.95],
            builder: (context, scrollController) => Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(borderRadius30)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.iron,
                    blurRadius: radius8,
                    offset: Offset(0, -2),
                  )
                ],
              ),
              child: showRequestSheet.value
                  ? RequestSheet(
                      addressController: addressController,
                      formattedAddress: formattedAddress,
                      selected: selectedAddress,
                      lat: lat,
                      lng: lng,
                      isManuallySelected: isManuallySelected,
                      scrollController: scrollController,
                      titleController: titleController,
                      descriptionController: descriptionController,
                      feesController: feesController,
                      formKey: formKey,
                      onSubmit: submitRequest,
                      onCancel: () {
                        showRequestSheet.value = false;
                        titleController.clear();
                        descriptionController.clear();
                        feesController.clear();
                      },
                    )
                  : SearchSheet(
                      scrollController: scrollController,
                      addressController: addressController,
                      address: address,
                      formattedAddress: formattedAddress,
                      lat: lat,
                      lng: lng,
                      focusNode: focusNode,
                      isManuallySelected: isManuallySelected,
                      onLocationSelected: onLocationSelected,
                      onChooseOnMap: () {
                        isMapSelectionMode.value = true;
                        isManuallySelected.value = true;
                        selectedAddress.value = null;
                        lastFetchedLat.value = null;
                        lastFetchedLng.value = null;
                      },
                    ),
            ),
          ),
        if (showRequests.value)
          RequestListWidget(
            showRequests: showRequests,
          )
      ],
    );
  }
}
