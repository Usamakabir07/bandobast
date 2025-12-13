import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_places_autocomplete_widgets/widgets/address_autocomplete_textformfield.dart';

import '../../../themes/app_colors.dart';
import '../../../utils/constants/app_constants.dart';
import '../../../utils/dimensions.dart';

class AutocompleteTextField extends HookWidget {
  const AutocompleteTextField({
    super.key,
    required this.addressController,
    required this.address,
    required this.formattedAddress,
    required this.lat,
    required this.long,
    this.focusNode,
    this.onLocationSelected,
    this.validators = const <FormFieldValidator>[],
  });

  final TextEditingController addressController;
  final ValueNotifier<String> address;
  final ValueNotifier<String?> formattedAddress;
  final ValueNotifier<double> lat;
  final ValueNotifier<double> long;
  final FocusNode? focusNode;
  final VoidCallback? onLocationSelected;
  final List<String? Function(String? value)> validators;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isFocused = useState(false);
    final ValueNotifier<bool> isErrorState = useState(false);
    final hasInput = useState<bool>(false);

    useEffect(() {
      void handleInput() {
        hasInput.value = addressController.text.isNotEmpty;
        if (addressController.text.isEmpty) {
          isErrorState.value = false;
        }
      }
      addressController.addListener(handleInput);
      return () {
        addressController.removeListener(handleInput);
      };
    }, [addressController]);

 void onSuggestionClick(Place placeDetails) {
      address.value = placeDetails.name!;
      formattedAddress.value = placeDetails.formattedAddress!;
      addressController.text = address.value;
      lat.value = placeDetails.lat!;
      long.value = placeDetails.lng!;
      
      if (focusNode != null) {
        focusNode!.unfocus();
      }
      
      if (onLocationSelected != null) {
        Future.delayed(Duration.zero, () {
          onLocationSelected!();
        });
      }
    }

    return AddressAutocompleteTextFormField(
      mapsApiKey: AppConstants.apiKey,
      onSuggestionClick: onSuggestionClick,
      componentCountry: AppConstants.countryCode,
      language: AppConstants.languageType,
      focusNode: focusNode,
      clearButton: addressController.text.isNotEmpty
          ? const Icon(Icons.close, color: AppColors.boulder)
          : null,
      style: AppStyles.bodyLargeBold,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(padding10),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: width2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide: BorderSide(
            color: isFocused.value ? AppColors.seaGreen : AppColors.silverMist,
            width: isFocused.value ? width2 : width1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide: const BorderSide(
            color: AppColors.seaGreen,
            width: width2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide:
              const BorderSide(color: AppColors.errorColor, width: width3),
        ),
        hintText: 'Search for your location...',
        prefixIcon: Icon(Icons.search,
            color: isFocused.value ? AppColors.seaGreen : AppColors.boulder),
      ),
      validator: (value) => _validate(
        isErrorState,
        isFocused,
        value,
      ),
      suggestionsOverlayDecoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(borderRadius12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: double04),
            blurRadius: radius10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      buildItem: (Suggestion suggestion, index) => ListTile(
        leading: const Icon(
          Icons.location_on,
          color: AppColors.seaGreen,
        ),
        title: Text(
          suggestion.description.split(",").first,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.bodyLargeBold,
        ),
        subtitle: Text(
          suggestion.description,
          style: AppStyles.bodyMedium.copyWith(color: AppColors.boulder),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: padding10,
          vertical: 0,
        ),
      ),
    );
  }

  String? _validate(
    ValueNotifier<bool> isErrorState,
    ValueNotifier<bool> isFocused,
    value,
  ) {
    isFocused.value = false;

    for (var validator in validators) {
      final validatorResult = validator(value);
      if (validatorResult != null) {
        isErrorState.value = true;
        return validatorResult;
      }
    }
    return null;
  }
}
