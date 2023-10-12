import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/static_data.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';

import '../../location_and_language/widgets/app_heading.dart';
import '../../location_and_language/widgets/custom_text_field.dart';
import '../../location_and_language/widgets/text_style.dart';
import 'login_screen.dart';
import 'new_password.dart';

class VerificationScreen extends StatelessWidget {
  final bool? isEmail;
  final bool? sendcodeForLogin;
  const VerificationScreen(
      {super.key, this.isEmail = false, this.sendcodeForLogin = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  AppHeading(
                      title: isEmail!
                          ? AppStaticData.verificationEmail
                          : AppStaticData.verification),
                  SizedBox(height: 10.h),
                  Text(
                    textAlign: TextAlign.center,
                    isEmail!
                        ? AppStaticData.verificationCodeSentTo
                        : AppStaticData.verificationCodeSent,
                    style:
                        subTitleStyle.copyWith(color: AppColors.disableColor),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hintText: AppStaticData.verificationCode,
                    title: "",
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStaticData.minLeft,
                          style: subTitleStyle.copyWith(
                              color: AppColors.disableColor)),
                      Text(
                        AppStaticData.resend,
                        style:
                            subTitleStyle.copyWith(color: AppColors.redColor),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      title: sendcodeForLogin!
                          ? AppStaticData.VerifyNow_SignIn
                          : AppStaticData.verifyNow,
                      onPressed: () {
                        sendcodeForLogin!
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NewPasswordSetScreen()));
                      }),
                ],
              )
            ]),
      ),
    );
  }
}
