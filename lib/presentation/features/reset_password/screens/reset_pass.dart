import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/static_data.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/verification_screen.dart';
import '../../location_and_language/widgets/app_heading.dart';
import '../../location_and_language/widgets/custom_text_field.dart';

class ResetPwdWithEmailPhone extends StatelessWidget {
  final bool isEmail;
  const ResetPwdWithEmailPhone({super.key, this.isEmail = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isEmail
                  ? AppHeading(title: AppStaticData.resetPasswordEmail)
                  : AppHeading(title: AppStaticData.resetPasswordMobile),
              SizedBox(height: 20.h),
              Column(
                children: [
                  CustomTextField(
                    isCountryPicker: isEmail ? false : true,
                    hintText: isEmail
                        ? AppStaticData.emailAddress
                        : AppStaticData.phoneNumber,
                    prefixIcon: Icons.email,
                    title: "",
                  )
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      title: AppStaticData.sendCode,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerificationScreen(
                                    isEmail: isEmail ? true : false)));
                      }),
                ],
              )
            ]),
      ),
    );
  }
}
