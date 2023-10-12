import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/texts.dart';

import 'login_screen.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 10.h),
            Column(
              children: [
                Image.asset(AppImages.successfulLogo),
                SizedBox(height: 30.h),
                const CustomText(
                    title: 'password changed successfully',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ],
            ),
            //SizedBox(height: 10.h),
            CustomButton(
                title: 'Login Now',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
