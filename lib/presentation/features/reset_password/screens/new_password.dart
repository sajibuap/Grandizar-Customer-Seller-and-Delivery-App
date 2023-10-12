import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/G-3/location_and_language/widgets/app_heading.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/custom_text_field.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/password_changed.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/static_data.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';

import '../../location_and_language/widgets/text_style.dart';

class NewPasswordSetScreen extends StatefulWidget {
  NewPasswordSetScreen({super.key});

  @override
  State<NewPasswordSetScreen> createState() => _NewPasswordSetScreenState();
}

class _NewPasswordSetScreenState extends State<NewPasswordSetScreen> {
  bool isPasswordVisible = true;
  bool obscureText = true;
  bool isPasswordVisible2 = true;
  bool obscureText2 = true;
  void changePasswordVisibility(bool isPasswordVisible, bool obscureText) {
    isPasswordVisible = !isPasswordVisible;
    obscureText = !obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(16), children: [
        AppHeading(title: AppStaticData.newPassword),
        SizedBox(height: 20.h),
        Text(
          textAlign: TextAlign.center,
          AppStaticData.differentFrom,
          style: subTitleStyle,
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: AppStaticData.password,
          prefixIcon: Icons.lock,
          title: "",
          obscureText: obscureText,
          suffixWidget: InkWell(
            onTap: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
                obscureText = !obscureText;
              });
            },
            child: Icon(
              isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              color: AppColors.secondaryBlackColor,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: AppStaticData.confirmPassword,
          prefixIcon: Icons.lock,
          title: "",
          obscureText: obscureText2,
          suffixWidget: InkWell(
            onTap: () {
              setState(() {
                isPasswordVisible2 = !isPasswordVisible2;
                obscureText2 = !obscureText2;
              });
            },
            child: Icon(
              isPasswordVisible2 ? Icons.visibility_off : Icons.visibility,
              color: AppColors.secondaryBlackColor,
            ),
          ),
        ),
        SizedBox(height: 300.h),
        CustomButton(
            title: AppStaticData.resetPassword,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasswordChanged()));
            }),
      ]),
    );
  }
}
