import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/common_widgets/app_text_field.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:bandobast/app/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RequestSheet extends HookWidget {
  const RequestSheet({
    super.key,
    required this.addressController,
    required this.formattedAddress,
    required this.selected,
    required this.lat,
    required this.lng,
    required this.isManuallySelected,
    required this.scrollController,
    required this.titleController,
    required this.descriptionController,
    required this.feesController,
    required this.formKey,
    required this.onSubmit,
    required this.onCancel,
  });

  final TextEditingController addressController;
  final ValueNotifier<String> formattedAddress;
  final ValueNotifier<String?> selected;
  final ValueNotifier<double> lat;
  final ValueNotifier<double> lng;
  final ValueNotifier<bool> isManuallySelected;
  final ScrollController scrollController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController feesController;
  final GlobalKey<FormState> formKey;
  final VoidCallback onSubmit;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
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
