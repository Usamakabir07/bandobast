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
    required this.lat,
    required this.long,
    this.focusNode,
    this.validators = const <FormFieldValidator>[],
  });
  
  final TextEditingController addressController;
  final ValueNotifier<String> address;
  final ValueNotifier<double> lat;
  final ValueNotifier<double> long;
  final FocusNode? focusNode;
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
      addressController.text = address.value;
      lat.value = placeDetails.lat!;
      long.value = placeDetails.lng!;
      
      // Unfocus after selection
      if (focusNode != null) {
        focusNode!.unfocus();
      }
    }

    return AddressAutocompleteTextFormField(
      mapsApiKey: AppConstants.apiKey,
      onSuggestionClick: onSuggestionClick,
      componentCountry: AppConstants.countryCode,
      language: AppConstants.languageType,
      focusNode: focusNode,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: width2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius12),
          borderSide:
              const BorderSide(color: AppColors.errorColor, width: width3),
        ),
        hintText: 'Search location...',
      ),
      validator: (value) => _validate(
        isErrorState,
        isFocused,
        value,
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