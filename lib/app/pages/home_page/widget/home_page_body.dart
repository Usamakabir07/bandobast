import 'dart:developer';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/common_widgets/app_text_field.dart';
import 'package:bandobast/app/pages/home_page/widget/google_map_widget.dart';
import 'package:bandobast/app/pages/home_page/widget/autocomplete_text_field.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/validation.dart';
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
                  ? _buildRequestSheet(
                      addressController,
                      formattedAddress,
                      selectedAddress,
                      lat,
                      lng,
                      isManuallySelected,
                      scrollController,
                      titleController,
                      descriptionController,
                      feesController,
                      formKey,
                      submitRequest,
                      () {
                        showRequestSheet.value = false;
                        titleController.clear();
                        descriptionController.clear();
                        feesController.clear();
                      },
                    )
                  : _buildSearchSheet(
                      scrollController,
                      addressController,
                      address,
                      formattedAddress,
                      lat,
                      lng,
                      focusNode,
                      isManuallySelected,
                      onLocationSelected,
                      () {
                        isMapSelectionMode.value = true;
                        isManuallySelected.value = true;
                        selectedAddress.value = null;
                        lastFetchedLat.value = null;
                        lastFetchedLng.value = null;
                      },
                    ),
            ),
          ),
      ],
    );
  }

  /// SEARCH SHEET
  Widget _buildSearchSheet(
    ScrollController scrollController,
    TextEditingController addressController,
    ValueNotifier<String> address,
    ValueNotifier<String> formattedAddress,
    ValueNotifier<double> lat,
    ValueNotifier<double> lng,
    FocusNode focusNode,
    ValueNotifier<bool> isManuallySelected,
    VoidCallback onLocationSelected,
    VoidCallback onChooseOnMap,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: height8),
        Center(
          child: Container(
            width: width50,
            height: height5,
            decoration: BoxDecoration(
              color: AppColors.seaGreen,
              borderRadius: BorderRadius.circular(borderRadius12),
            ),
          ),
        ),
        const SizedBox(height: height8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: Material(
            elevation: elevation1,
            borderRadius: BorderRadius.circular(16),
            child: AutocompleteTextField(
              addressController: addressController,
              address: address,
              formattedAddress: formattedAddress,
              lat: lat,
              long: lng,
              focusNode: focusNode,
              onLocationSelected: () {
                isManuallySelected.value = false;
                onLocationSelected();
              },
            ),
          ),
        ),
        const SizedBox(height: height2),
        TextButton.icon(
          onPressed: onChooseOnMap,
          icon: const Icon(Icons.map, color: AppColors.seaGreen),
          label: Text(
            'Choose on the map',
            style: AppStyles.bodyLargeBold.copyWith(
              color: AppColors.seaGreen,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: height2),
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: 3,
            itemBuilder: (_, i) => ListTile(
              leading: const Icon(Icons.history, color: AppColors.boulder),
              title: Text("Garden town, Multan", style: AppStyles.bodyLarge),
              onTap: () => focusNode.unfocus(),
            ),
          ),
        )
      ],
    );
  }

  /// REQUEST SHEET
  Widget _buildRequestSheet(
    TextEditingController addressController,
    ValueNotifier<String> formattedAddress,
    ValueNotifier<String?> selected,
    ValueNotifier<double> lat,
    ValueNotifier<double> lng,
    ValueNotifier<bool> isManuallySelected,
    ScrollController scrollController,
    TextEditingController titleController,
    TextEditingController descriptionController,
    TextEditingController feesController,
    GlobalKey<FormState> formKey,
    VoidCallback onSubmit,
    VoidCallback onCancel,
  ) {
    return Column(
      children: [
        const SizedBox(height: height8),
        Center(
          child: Container(
            width: width50,
            height: height5,
            decoration: BoxDecoration(
              color: AppColors.seaGreen,
              borderRadius: BorderRadius.circular(borderRadius12),
            ),
          ),
        ),
        const SizedBox(height: height16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: Text('Request Details',
              style:
                  AppStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: height16),
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(horizontal: padding20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your location',
                      style: AppStyles.bodyMedium
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: height8),
                  ListTile(
                    leading: const CircleAvatar(
                      radius: radius10,
                      backgroundColor: AppColors.seaGreen,
                      child: CircleAvatar(
                        radius: radius4,
                        backgroundColor: AppColors.white,
                      ),
                    ),
                    title: Text(
                        isManuallySelected.value
                            ? selected.value?.split(",").first ?? ''
                            : formattedAddress.value.split(",").first,
                        style: AppStyles.bodyMedium
                            .copyWith(fontWeight: FontWeight.w600)),
                    subtitle: Text(
                        isManuallySelected.value
                            ? selected.value ?? ''
                            : formattedAddress.value,
                        style: AppStyles.bodyMedium
                            .copyWith(color: AppColors.gravel)),
                  ),
                  const SizedBox(height: height16),
                  const SizedBox(height: height8),
                  AppTextField(
                    controller: titleController,
                    hintText: 'Enter the request title',
                    validators: [
                      Validators.isNotEmpty(
                          errorText: "This field cannot be empty"),
                    ],
                  ),
                  const SizedBox(height: height16),
                  Text('Description',
                      style: AppStyles.bodyMedium
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: height8),
                  AppTextField(
                    controller: descriptionController,
                    hintText: 'Enter the request description',
                    maxLines: 4,
                    validators: [
                      Validators.isNotEmpty(
                          errorText: "This field cannot be empty"),
                    ],
                  ),
                  const SizedBox(height: height16),
                  Text('Fees',
                      style: AppStyles.bodyMedium
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: height8),
                  AppTextField(
                      controller: feesController,
                      hintText: 'Enter your offer fees',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(padding14),
                        child: Text("PKR ",
                            style: AppStyles.titleLargeBold.copyWith(
                                color: AppColors.seaGreen,
                                fontWeight: FontWeight.w800)),
                      ),
                      textInputType: TextInputType.number,
                      validators: [
                        Validators.isNotEmpty(
                            errorText: "This field cannot be empty"),
                      ]),
                  const SizedBox(height: height24),
                  Row(
                    children: [
                      Expanded(
                        child: AppOutlinedButton(
                          onPressed: onCancel,
                          text: 'Cancel',
                          borderColor: AppColors.boulder,
                          textColor: AppColors.boulder,
                        ),
                      ),
                      const SizedBox(width: width12),
                      Expanded(
                        child: AppElevatedButton(
                          onPressed: onSubmit,
                          text: 'Submit',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
