import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/Marketplace/settings_page.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/texts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          ),
          title: CustomText(
              title: 'Cart', fontSize: 18.spMax, fontWeight: FontWeight.bold)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.cart2),
            SizedBox(height: 40.h),
            CustomText(
                title: 'are You Hungry?',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
            CustomText(
                title: 'You haven’t added anything to your cart',
                fontSize: 14.sp,
                txtColor: AppColors.disableColor),
            SizedBox(height: 20.h),
            CustomButtonMedium(
                title: 'Browse',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                })
          ],
        ),
      ),
    );
  }
}
