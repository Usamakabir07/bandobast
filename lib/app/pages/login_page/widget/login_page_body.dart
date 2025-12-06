import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/utils/default_input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';
import '../cubit/auth_cubit.dart';
import 'package:intl_phone_field/countries.dart' as country_intl;

class LoginPageBody extends HookWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final phoneController = useTextEditingController();
    final phoneCode = useState('92');
    final focusNode = useFocusNode();
    // final isChecked = useState(false);
    useListenable(focusNode);

    const allowedCountryCodes = ['US', 'PK', 'SE', 'IQ', 'SA', 'AE'];
    final allowedCountries = country_intl.countries
        .where((c) => allowedCountryCodes.contains(c.code))
        .toList();

    String? validatePhoneNumber(PhoneNumber? phone) {
      if (phone == null || phone.number.isEmpty) {
        return "This Field cannot be empty";
      }
      return null;
    }

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedIn) {
          context.router.replace(const DashboardRoute());
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(padding12),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Join us via phone number",
                    style: AppStyles.headLineSmallBold,
                  ),
                  Text(
                    "We'll send you the OTP to verify your Phone Number",
                    style: AppStyles.bodyMedium,
                  ),
                  const SizedBox(height: height20),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: IntlPhoneField(
                      focusNode: focusNode,
                      autovalidateMode: AutovalidateMode.always,
                      keyboardType: TextInputType.phone,
                      initialCountryCode: 'PK',
                      controller: phoneController,
                      countries: allowedCountries,
                      style: AppStyles.titleSmall,
                      dropdownTextStyle: AppStyles.titleSmall,
                      decoration:
                          defaultInputLightDecoration(hintText: "Phone Number"),
                      onCountryChanged: (phone) {
                        phoneCode.value = phone.dialCode;
                      },
                      validator: validatePhoneNumber,
                    ),
                  ),
                  const SizedBox(height: height30),
                ],
              ),
              AppElevatedButton(
                text: 'Next',
                textColor: AppColors.white,
                textSize: fontSize20,
                color: AppColors.seaGreen,
                width: MediaQuery.of(context).size.width,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final phone = '+92${phoneController.text}';
                    // context.read<AuthCubit>().saveCredentials(phone);
                    context.router.push(OtpVerificationRoute(phoneNumber: phone));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
