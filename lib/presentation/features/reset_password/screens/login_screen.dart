import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/reset_pass.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/sign_up_screen.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/verification_screen.dart';

import '../../G-3/location_and_language/location_access_page.dart';
import '../../G-3/location_and_language/widgets/app_heading.dart';
import '../../location_and_language/utils/app_imges.dart';
import '../../location_and_language/utils/colors.dart';
import '../../location_and_language/utils/static_data.dart';
import '../../location_and_language/widgets/buttons.dart';
import '../../location_and_language/widgets/custom_text_field.dart';
import '../../location_and_language/widgets/text_style.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool email = false;
  TextEditingController phoneController = TextEditingController();
  String selectedCountryCode = '+966';
  bool isPasswordVisible = true;
  bool obscureText = true;
  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    obscureText = !obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              AppHeading(title: AppStaticData.logIn),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(
                      title: 'Mobile',
                      onPressed: () {
                        setState(() {
                          email = false;
                        });
                      },
                      prefixIcon:
                          Icon(Icons.phone_iphone, color: AppColors.whiteColor),
                      buttonColor: email
                          ? AppColors.disableColor.withOpacity(0.2)
                          : AppColors.redColor),
                  CustomIconButton(
                      title: 'Email',
                      onPressed: () {
                        setState(() {
                          email = true;
                        });
                      },
                      prefixIcon:
                          Icon(Icons.email, color: AppColors.whiteColor),
                      buttonColor: email
                          ? AppColors.redColor
                          : AppColors.disableColor.withOpacity(0.2)),
                ],
              ),
              SizedBox(height: 20.h),
              !email
                  ? Column(
                      children: [
                        CustomTextField(
                          txtController: phoneController,
                          isCountryPicker: true,
                          hintText: '50-123456',
                          prefixIcon: Icons.lock,
                          title: '',
                          onCountryCodeSelected: (countryCode) {
                            selectedCountryCode = countryCode;
                          },
                        ),
                        SizedBox(height: 20.h),
                        CustomButton(
                            title: 'Send OTP',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VerificationScreen(
                                          sendcodeForLogin: true)));
                            }),
                        SizedBox(height: 20.h),
                        TextInTheMiddle(text: 'Or continue with'),
                        SizedBox(height: 20.h),
                        CustomIconButton(
                            width: 327.w,
                            height: 60.h,
                            title: 'Continue with Google',
                            buttonColor: AppColors.whiteColor,
                            onPressed: () {},
                            prefixIcon: Image.asset(AppImages.google)),
                        SizedBox(height: 20.h),
                        CustomIconButton(
                            width: 327.w,
                            height: 60.h,
                            title: 'Continue with Facebook',
                            buttonColor: AppColors.whiteColor,
                            onPressed: () {},
                            prefixIcon: Image.asset(AppImages.facebook)),
                        SizedBox(height: 20.h),
                        CustomIconButton(
                            width: 327.w,
                            height: 60.h,
                            title: 'Continue with Apple',
                            buttonColor: AppColors.whiteColor,
                            onPressed: () {},
                            prefixIcon: Image.asset(AppImages.apple))
                      ],
                    )
                  : Container(
                      height: 500.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomTextField(
                                hintText: AppStaticData.emailAddress,
                                prefixIcon: Icons.email,
                                title: AppStaticData.email,
                              ),
                              SizedBox(height: 10.h),
                              CustomTextField(
                                hintText: AppStaticData.password,
                                prefixIcon: Icons.lock,
                                title: AppStaticData.password,
                                obscureText: obscureText,
                                suffixWidget: InkWell(
                                  onTap: () {
                                    setState(() {
                                      changePasswordVisibility();
                                    });
                                  },
                                  child: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColors.secondaryBlackColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 280.h,
                                          padding: EdgeInsets.all(12),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(AppStaticData.resetPassword,
                                                  style: titleStyle),
                                              SizedBox(height: 10.h),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.fadeBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: ListTile(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ResetPwdWithEmailPhone(
                                                                    isEmail:
                                                                        true)));
                                                  },
                                                  leading: const Icon(
                                                    Icons.email,
                                                  ),
                                                  title: Text(
                                                    'Email',
                                                    style:
                                                        subTitleStyle.copyWith(
                                                            color: AppColors
                                                                .disableColor),
                                                  ),
                                                  subtitle: Text(
                                                      AppStaticData
                                                          .Resetviaemailverification,
                                                      style: subTitleStyle
                                                          .copyWith(
                                                              color: AppColors
                                                                  .disableColor)),
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.fadeBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: ListTile(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ResetPwdWithEmailPhone()));
                                                  },
                                                  leading: const Icon(
                                                    Icons.phone_iphone,
                                                  ),
                                                  title: Text(
                                                    "Mobile",
                                                    style:
                                                        subTitleStyle.copyWith(
                                                            color: AppColors
                                                                .disableColor),
                                                  ),
                                                  subtitle: Text(
                                                      AppStaticData
                                                          .Resetviaphoneverification,
                                                      style: subTitleStyle
                                                          .copyWith(
                                                              color: AppColors
                                                                  .disableColor)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    AppStaticData.forgotPassword,
                                    style: subTitleStyle.copyWith(
                                        color: AppColors.redColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomButton(
                                  title: AppStaticData.logIn,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LocationAccessPage()));
                                  }),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppStaticData.newSignUp,
                                    style: titleStyle.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.disableColor),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignupScreen()));
                                    },
                                    child: Text(
                                      AppStaticData.signUp,
                                      style: titleStyle.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
            ]),
          ),
        ));
  }
}

class TextInTheMiddle extends StatelessWidget {
  final String text;
  const TextInTheMiddle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1.5,
            color: const Color(0xFFC4C4C4),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          text,
          style: titleStyle.copyWith(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: Container(
            height: 1.5,
            color: const Color(0xFFC4C4C4),
          ),
        ),
      ],
    );
  }
}
