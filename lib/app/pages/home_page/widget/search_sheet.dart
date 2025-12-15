import 'package:bandobast/app/pages/home_page/widget/autocomplete_text_field.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchSheet extends HookWidget {
  const SearchSheet(
      {super.key,
      required this.scrollController,
      required this.addressController,
      required this.address,
      required this.formattedAddress,
      required this.lat,
      required this.lng,
      required this.focusNode,
      required this.isManuallySelected,
      required this.onLocationSelected,
      required this.onChooseOnMap});

  final ScrollController scrollController;
  final TextEditingController addressController;
  final ValueNotifier<String> address;
  final ValueNotifier<String> formattedAddress;
  final ValueNotifier<double> lat;
  final ValueNotifier<double> lng;
  final FocusNode focusNode;
  final ValueNotifier<bool> isManuallySelected;
  final VoidCallback onLocationSelected;
  final VoidCallback onChooseOnMap;

  @override
  Widget build(BuildContext context) {
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
}
