import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_text_field.dart';
import 'package:grandizar_customer_v2/presentation/features/Marketplace/settings_page.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/texts.dart';

class PasswordModificationPage extends StatefulWidget {
  const PasswordModificationPage({super.key});

  @override
  State<PasswordModificationPage> createState() => _PasswordModificationState();
}

class _PasswordModificationState extends State<PasswordModificationPage> {
  bool isOldPasswordVisible = true;
  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  bool oldObscureText = true;
  bool newObscureText = true;
  bool confirmObscureText = true;
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          toolbarHeight: 90.h,
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CircleAvatar(
              backgroundColor: AppColors.awashColor,
              radius: 25.r,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: AppColors.redColor)),
            ),
          ),
          title: CustomText(
              title: 'Change Password',
              fontSize: 18.spMax,
              fontWeight: FontWeight.bold)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(AppImages.grandizarLogo2),
              SizedBox(height: 30.h),
              CustomTextField2(
                txtController: oldPasswordController,
                hintText: 'Type Old Password',
                prefixIcon: Icons.lock,
                title: 'OLD PASSWORD',
                obscureText: oldObscureText,
                suffixWidget: InkWell(
                  onTap: () {
                    setState(() {
                      isOldPasswordVisible = !isOldPasswordVisible;
                      oldObscureText = !oldObscureText;
                    });
                  },
                  child: Icon(
                    isOldPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.secondaryBlackColor,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              CustomTextField2(
                txtController: newPasswordController,
                hintText: 'Type New Password',
                prefixIcon: Icons.lock,
                title: 'NEW PASSWORD',
                obscureText: newObscureText,
                suffixWidget: InkWell(
                  onTap: () {
                    setState(() {
                      isNewPasswordVisible = !isNewPasswordVisible;
                      newObscureText = !newObscureText;
                    });
                  },
                  child: Icon(
                    isNewPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.secondaryBlackColor,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              CustomTextField2(
                txtController: passwordController,
                hintText: 'Confirm Your Password',
                prefixIcon: Icons.lock,
                title: 'CONFIRM PASSWORD',
                obscureText: confirmObscureText,
                suffixWidget: InkWell(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      confirmObscureText = !confirmObscureText;
                    });
                  },
                  child: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.secondaryBlackColor,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              CustomButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
