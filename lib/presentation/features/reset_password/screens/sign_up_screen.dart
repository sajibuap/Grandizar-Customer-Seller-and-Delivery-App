import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/static_data.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/verification_screen.dart';

import '../../location_and_language/widgets/app_heading.dart';
import '../../location_and_language/widgets/custom_text_field.dart';
import '../../location_and_language/widgets/text_style.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck = false;

  TextEditingController fnController = TextEditingController();

  TextEditingController lnController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  String selectedCountryCode = '+966';

  void changeStatus() {
    isCheck = !isCheck;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AppHeading(title: AppStaticData.reg),
          SizedBox(height: 30.h),
          CustomTextField(
              txtController: fnController,
              hintText: AppStaticData.firstName,
              prefixIcon: Icons.person,
              title: AppStaticData.firstNameUpper),
          SizedBox(height: 10.h),
          CustomTextField(
              txtController: lnController,
              hintText: AppStaticData.lastName,
              prefixIcon: Icons.person,
              title: AppStaticData.lastNameUpper),
          SizedBox(height: 10.h),
          CustomTextField(
              txtController: emailController,
              hintText: AppStaticData.emailAddress,
              prefixIcon: Icons.email,
              title: AppStaticData.email),
          SizedBox(height: 10.h),
          // CustomTextField(
          //     txtController: passController,
          //     hintText: '',
          //     prefixIcon: Icons.password_outlined,
          //     title: AppStaticData.password),
          // SizedBox(height: 10.h),
          CustomTextField(
            txtController: phoneController,
            isCountryPicker: true,
            hintText: '50-123456',
            prefixIcon: Icons.lock,
            title: AppStaticData.phoneNo,
            onCountryCodeSelected: (countryCode) {
              selectedCountryCode = countryCode;
            },
          ),
          SizedBox(height: 20.h),
          CheckboxListTile(
            value: isCheck,
            side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(width: 1, color: AppColors.redColor)),
            onChanged: (value) {
              setState(() {
                changeStatus();
              });
            },
            title: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: AppStaticData.privacyPolicy,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.disableColor)),
                  TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.indigo,
                          decoration: TextDecoration.underline)),
                  TextSpan(
                      text: ' and ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.disableColor)),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.indigo,
                          decoration: TextDecoration.underline)),
                ]),
                textAlign: TextAlign.center),
            activeColor: AppColors.fadeBlue,
            checkColor: AppColors.primaryBlackColor,
            fillColor:
                MaterialStateColor.resolveWith((states) => AppColors.fadeBlue),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          SizedBox(height: 20.h),
          CustomButton(
              title: AppStaticData.signUp,
              onPressed: () async {
                // String mobileNum = selectedCountryCode + phoneController.text;
                // final response = await ref.read(authRepoProvider).contactRegister(
                //     body: ContactRegistrationBody(
                //         name: fnController.text,
                //         surname: lnController.text,
                //         emailAddress: emailController.text,
                //         mobile: mobileNum,
                //         password: '12345',
                //         captchaResponse: 'ABC',
                //         primaryHubId: 12507));
                //
                // print('My Response: $response');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerificationScreen()));
              }),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStaticData.alreadyAccount,
                style: titleStyle.copyWith(
                    fontSize: 15.sp, color: AppColors.disableColor),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  AppStaticData.logIn,
                  style: titleStyle.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
