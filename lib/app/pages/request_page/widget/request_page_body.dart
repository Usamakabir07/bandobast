import 'dart:io';

import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import '../../../common_widgets/app_elevated_button.dart';
import '../../../common_widgets/app_outlined_button.dart';
import '../../../common_widgets/app_text_field.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/validation.dart';
import 'autocomplete_text_field.dart';
import 'package:lucide_icons/lucide_icons.dart';

class RequestPageBody extends HookWidget {
  const RequestPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final offerPriceController = useTextEditingController();
    final addressController = useTextEditingController();
    final ValueNotifier<String> address = useState('');
    final ValueNotifier<double> lat = useState(0.0);
    final ValueNotifier<double> long = useState(0.0);
    final pickedImage = useState(XFile(''));
    ValueNotifier<String> selectedService = ValueNotifier('Cleaning');

    List<Map<String, dynamic>> categories = [
      {
        'icon': LucideIcons.trash2,
        'name': 'Cleaning',
      },
      {
        'icon': LucideIcons.wind,
        'name': 'AC Service',
      },
      {
        'icon': LucideIcons.plug,
        'name': 'Electric Service',
      },
      {
        'icon': LucideIcons.droplet,
        'name': 'Plumber Service',
      },
      {
        'icon': LucideIcons.userPlus,
        'name': 'Company',
      },
      {
        'icon': LucideIcons.messageSquare,
        'name': 'Consultation',
      },
      {
        'icon': LucideIcons.car,
        'name': 'Driving Service',
      },
      {
        'icon': LucideIcons.zap,
        'name': 'Errand service',
      },
      {
        'icon': LucideIcons.moreHorizontal,
        'name': 'Others',
      },
    ];

    Future<void> pickImageFromMemory() async {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        pickedImage.value = image;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(padding12),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create a request to find the best nearby service",
                style: AppStyles.bodyMedium,
              ),
              const SizedBox(height: height20),
              Text(
                "Choose your location",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              AutocompleteTextField(
                addressController: addressController,
                address: address,
                lat: lat,
                long: long,
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              Text(
                "Request title",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              AppTextField(
                controller: titleController,
                hintText: 'Enter request title',
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              Text(
                "Request description",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              AppTextField(
                controller: descriptionController,
                hintText: 'Enter request description',
                maxLines: 6,
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              Text(
                "Request Category",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              DropdownButtonFormField<String>(
                initialValue: selectedService.value,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                items: categories.map((service) {
                  return DropdownMenuItem<String>(
                    value: service['name'],
                    child: Row(
                      children: [
                        Icon(service['icon'], size: iconSize18),
                        const SizedBox(width: width10),
                        Text(
                          service['name'],
                          style: AppStyles.bodyLargeBold,
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    selectedService.value = value;
                  }
                },
              ),
              const SizedBox(height: height20),
              Text(
                "Request amount",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              AppTextField(
                controller: offerPriceController,
                hintText: 'Enter Amount in PKR',
                textInputType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height10),
              Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: AppColors.gravel,
                    size: iconSize18,
                  ),
                  Text(
                    " Please offer a reasonable amount",
                    textAlign: TextAlign.center,
                    style: AppStyles.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: height20),
              Text(
                "Attach a photo (Optional)",
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height10),
              InkWell(
                onTap: () => pickImageFromMemory(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: height200,
                  decoration: BoxDecoration(
                    color: AppColors.iron.withValues(alpha: double055),
                    borderRadius: BorderRadius.circular(borderRadius20),
                    border:
                        Border.all(width: double04, color: AppColors.gravel),
                    image: DecorationImage(
                      image: FileImage(
                        File(pickedImage.value.path),
                      ),
                    ),
                  ),
                  child: pickedImage.value.path.isEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              LucideIcons.pin,
                              color: AppColors.shuttleGrey,
                              size: iconSize32,
                            ),
                            Text(
                              '\nAttach a photo',
                              style: AppStyles.bodyMedium,
                            )
                          ],
                        )
                      : const SizedBox(),
                ),
              ),
              if (pickedImage.value.path.isNotEmpty)
                Column(
                  children: [
                    const SizedBox(height: height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppElevatedButton(
                          onPressed: () => pickImageFromMemory(),
                          text: 'Change photo',
                          width: width150,
                        ),
                        const SizedBox(width: width10),
                        AppOutlinedButton(
                          onPressed: () {
                            pickedImage.value = XFile('');
                          },
                          text: 'Delete photo',
                          width: width150,
                          borderColor: AppColors.seaGreen,
                          textColor: AppColors.seaGreen,
                        ),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: height60),
              AppElevatedButton(
                text: 'Submit request',
                textColor: AppColors.white,
                textSize: fontSize20,
                color: AppColors.seaGreen,
                width: MediaQuery.of(context).size.width,
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    // final phone = phoneController.text;
                    //   context.router.navigate(
                    //       OtpRoute(phoneNumber: '+92${phoneController.text}'));
                  }
                },
              ),
              const SizedBox(height: height30),
            ],
          ),
        ),
      ),
    );
  }
}
