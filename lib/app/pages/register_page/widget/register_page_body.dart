import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/common_widgets/app_progress_indicator.dart';
import 'package:bandobast/app/common_widgets/error_snackbar.dart';
import 'package:bandobast/app/pages/register_page/cubit/save_user_profile_cubit.dart';
import 'package:bandobast/app/pages/register_page/cubit/save_user_profile_state.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/domain/entity/request/profile/save_user_profile_request.dart';
import 'package:bandobast/domain/utils/extension/failure_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import '../../../common_widgets/app_text_field.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/validation.dart';

class RegisterPageBody extends HookWidget {
  const RegisterPageBody({
    super.key,
    required this.userId,
    required this.phone,
  });
  final String userId;
  final String phone;

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController(text: phone);
    final pickedImage = useState(XFile(''));

    Future<void> pickImageFromMemory() async {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        pickedImage.value = image;
      }
    }

    return BlocConsumer<SaveUserProfileCubit, SaveUserProfileState>(
      listener: (BuildContext context, SaveUserProfileState state) =>
          state.maybeWhen(
        success: () => context.router.replaceAll([
          const DashboardRoute(),
        ]),
        error: (err) => ErrorSnackBar(
          message: err.getMessage(context),
        ).show(context),
        orElse: () {
          return null;
        },
      ),
      builder: (
        BuildContext context,
        SaveUserProfileState state,
      ) =>
          state.maybeWhen(
              loading: () => const AppProgressIndicator(),
              orElse: () => Padding(
                    padding: const EdgeInsets.all(padding20),
                    child: Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Create your Profile to start exploring",
                              textAlign: TextAlign.center,
                              style: AppStyles.bodyLarge,
                            ),
                            const SizedBox(height: height40),
                            InkWell(
                              onTap: () => pickImageFromMemory(),
                              child: CircleAvatar(
                                radius: radius60,
                                backgroundColor: AppColors.iron,
                                backgroundImage:
                                    FileImage(File(pickedImage.value.path)),
                                child: pickedImage.value.path.isEmpty
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                            const SizedBox(height: height20),
                            Row(
                              children: [
                                Text('First Name',
                                    style: AppStyles.bodyMediumBold),
                              ],
                            ),
                            const SizedBox(height: height10),
                            AppTextField(
                              controller: firstNameController,
                              hintText: 'Enter first name',
                              validators: [
                                Validators.isNotEmpty(
                                  errorText: 'This field cannot be empty',
                                ),
                              ],
                            ),
                            const SizedBox(height: height10),
                            Row(
                              children: [
                                Text('Last Name',
                                    style: AppStyles.bodyMediumBold),
                              ],
                            ),
                            const SizedBox(height: height10),
                            AppTextField(
                              controller: lastNameController,
                              hintText: 'Enter last name',
                              validators: [
                                Validators.isNotEmpty(
                                  errorText: 'This field cannot be empty',
                                ),
                              ],
                            ),
                            const SizedBox(height: height10),
                            Row(
                              children: [
                                Text('Email', style: AppStyles.bodyMediumBold),
                              ],
                            ),
                            const SizedBox(height: height10),
                            AppTextField(
                              controller: emailController,
                              hintText: 'Enter email',
                              textInputType: TextInputType.emailAddress,
                              validators: [
                                Validators.isNotEmpty(
                                  errorText: 'This field cannot be empty',
                                ),
                                Validators.validateEmail(
                                  errorText:
                                      'Please enter a valid email address',
                                ),
                              ],
                            ),
                            const SizedBox(height: height10),
                            Row(
                              children: [
                                Text('Phone Number',
                                    style: AppStyles.bodyMediumBold),
                              ],
                            ),
                            const SizedBox(height: height10),
                            AppTextField(
                              controller: phoneController,
                              hintText: 'Enter phone number',
                              textInputType: TextInputType.number,
                              readOnly: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
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
                            const SizedBox(height: height30),
                            AppElevatedButton(
                              text: 'Register',
                              textColor: AppColors.white,
                              textSize: fontSize20,
                              color: AppColors.seaGreen,
                              width:
                                  MediaQuery.of(context).size.width * double07,
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  final request = SaveUserProfileRequest(
                                    userId: userId,
                                    firstName: firstNameController.text,
                                    lastName: lastNameController.text,
                                    phone: phoneController.text,
                                    email: emailController.text,
                                  );
                                  context
                                      .read<SaveUserProfileCubit>()
                                      .saveUserProfile(request: request);
                                }
                              },
                            ),
                            const SizedBox(height: height20),
                          ],
                        ),
                      ),
                    ),
                  )),
    );
  }
}
