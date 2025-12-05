import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/common_widgets/app_toggle_switch.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import '../../../common_widgets/app_text_field.dart';
import '../../../router/app_router.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/validation.dart';

class RegisterPageBody extends HookWidget {
  const RegisterPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final pickedImage = useState(XFile(''));
    final isProvider = useState(false);

    Future<void> pickImageFromMemory() async {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        pickedImage.value = image;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(padding20),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bandobast",
                textAlign: TextAlign.center,
                style: AppStyles.headlineMedium.copyWith(
                  color: AppColors.seaGreen,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: height10),
              Text(
                "Register yourself to start exploring",
                textAlign: TextAlign.center,
                style: AppStyles.bodyLarge,
              ),
              const SizedBox(height: height40),
              InkWell(
                onTap: () => pickImageFromMemory(),
                child: CircleAvatar(
                  radius: radius60,
                  backgroundColor: AppColors.iron,
                  backgroundImage: FileImage(File(pickedImage.value.path)),
                  child: pickedImage.value.path.isEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.camera,
                              color: AppColors.shuttleGrey,
                              size: iconSize32,
                            ),
                            Text(
                              'Add photo',
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
              const SizedBox(height: height30),
              AppTextField(
                controller: firstNameController,
                hintText: 'Enter first name',
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              AppTextField(
                controller: lastNameController,
                hintText: 'Enter last name',
                validators: [
                  Validators.isNotEmpty(
                    errorText: 'This field cannot be empty',
                  ),
                ],
              ),
              const SizedBox(height: height20),
              AppTextField(
                controller: phoneController,
                hintText: 'Enter phone number',
                textInputType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+92',
                      style: AppStyles.bodyLarge.copyWith(
                        color: AppColors.seaGreen,
                      ),
                    ),
                  ],
                ),
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
                    " Your phone number will be used to send an OTP",
                    textAlign: TextAlign.center,
                    style: AppStyles.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: height10),
              const Divider(),
              const SizedBox(height: height10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: flex2,
                    child: Text(
                      "Do you also want to provide services?",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppStyles.labelMedium,
                    ),
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: isProvider,
                    builder: (context, value, _) {
                      return AppToggleSwitch(
                        value: value,
                        label: value ? 'Yes' : 'No',
                        onChanged: (newValue) {
                          isProvider.value = newValue;
                        },
                      );
                    },
                  )
                ],
              ),
              const SizedBox(height: height30),
              AppElevatedButton(
                text: 'Register',
                textColor: AppColors.white,
                textSize: fontSize20,
                color: AppColors.seaGreen,
                width: MediaQuery.of(context).size.width * double07,
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    // final phone = phoneController.text;
                    context.router.navigate(
                        OtpRoute(phoneNumber: '+92${phoneController.text}'));
                  }
                },
              ),
              const SizedBox(height: height30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    textAlign: TextAlign.center,
                    style: AppStyles.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      context.router.navigate(const LoginRoute());
                    },
                    child: Text(
                      " Login",
                      textAlign: TextAlign.center,
                      style: AppStyles.titleSmallBold
                          .copyWith(color: AppColors.seaGreen),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: height20),
            ],
          ),
        ),
      ),
    );
  }
}
