import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.grandizarLogo2),
            SizedBox(height: 20.h),
            CustomButton(
                title: 'العربية',
                onPressed: () {
                  Navigator.pop(context, 'العربية');
                }),
            SizedBox(height: 20.h),
            CustomButton(
                title: 'English',
                onPressed: () {
                  Navigator.pop(context, 'English');
                }),
          ],
        ),
      ),
    );
  }
}
