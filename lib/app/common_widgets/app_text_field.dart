import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../themes/app_styles.dart';

class AppTextField extends HookWidget {
  const AppTextField({
    required this.controller,
    super.key,
    this.hintText,
    this.textStyle,
    this.icon,
    this.showSuffixIcon = true,
    this.isPassword = false,
    this.validators = const <FormFieldValidator>[],
    this.onTap,
    this.maxLines = 1,
    this.initialValue,
    this.onChanged,
    this.focusNode,
    this.inputFormatters = const <TextInputFormatter>[],
    this.enableInteractiveSelection = true,
    this.minLines,
    this.readOnly,
    this.autofocus,
    this.obscureText,
    this.textInputType,
    this.suffixIcon,
    this.fillColor,
    this.borderStyle,
    this.prefixIcon,
    this.capitalization,
    this.enabled = true,
    this.maxLength,
  });

  final TextCapitalization? capitalization;
  final String? hintText;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final IconData? icon;
  final bool showSuffixIcon;
  final bool? isPassword;
  final List<String? Function(String? value)> validators;
  final int? maxLines;
  final VoidCallback? onTap;
  final String? initialValue;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter> inputFormatters;
  final bool enableInteractiveSelection;
  final int? minLines;
  final bool? readOnly;
  final TextInputType? textInputType;
  final Color? fillColor;
  final OutlineInputBorder? borderStyle;
  final bool enabled;
  final int? maxLength;

  final bool? autofocus;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isFocused = useState(false);
    final ValueNotifier<bool> isErrorState = useState(false);
    final FocusNode node = focusNode ?? useFocusNode();
    final hasInput = useState<bool>(false);
    useEffect(() {
      void handleFocusChange() {
        isFocused.value = node.hasFocus;
        if (controller.text.isEmpty) {
          isErrorState.value = false;
        }
      }

      void handleInput() {
        hasInput.value = controller.text.isNotEmpty;
        if (controller.text.isEmpty) {
          isErrorState.value = false;
        }
      }

      node.addListener(handleFocusChange);
      controller.addListener(handleInput);

      return () {
        node.removeListener(handleFocusChange);
        controller.removeListener(handleInput);
      };
    }, [node, controller]);

    return TextFormField(
      textCapitalization: capitalization ?? TextCapitalization.none,
      onTap: onTap,
      readOnly: readOnly ?? false,
      keyboardType: textInputType,
      minLines: minLines,
      style: AppStyles.titleSmall,
      maxLines: maxLines,
      focusNode: node,
      obscureText: isPassword ?? false,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      enabled: enabled,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      validator: (value) => _validate(isErrorState, isFocused, value),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged ??
          (value) {
            isErrorState.value = false;
            if (value.isEmpty) {
              isErrorState.value = false;
            }
            if (onChanged != null) {
              onChanged!(value);
            }
          },
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
