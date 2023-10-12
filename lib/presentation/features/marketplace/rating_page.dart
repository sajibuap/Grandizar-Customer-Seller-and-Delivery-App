import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/model/static_models.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/texts.dart';

import '../location_and_language/widgets/custom_text_field.dart';

import 'favourite_page.dart';

class RatingsPage extends StatelessWidget {
  const RatingsPage({super.key, required this.index});

  final int index;

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
            title: 'Ratings', fontSize: 18.spMax, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(AppImages.grandizarLogo2),
                CustomText(
                    title:
                        'How was your meal of ${orders[index].merchantName}?',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
                CustomText(
                    title: 'Help others decide what to order\nor avoid',
                    fontSize: 14.sp,
                    txtColor: AppColors.disableColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(orders[index].itemImg),
                        CustomText(
                            title: orders[index].itemName, fontSize: 14.sp),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.star, color: AppColors.redColor),
                        Icon(Icons.star, color: AppColors.redColor),
                        Icon(Icons.star, color: AppColors.redColor),
                        Icon(Icons.star, color: AppColors.redColor),
                        Icon(Icons.star_border, color: AppColors.redColor),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Tell others about your experience with\nHarres Special ',
                        style: TextStyle(
                          color: const Color(0xFF181C2E),
                          fontSize: 16.sp,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '(Optional)',
                        style: TextStyle(
                          color: const Color(0xFF9B9BA5),
                          fontSize: 16.sp,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                const CustomMultilineField(
                    hintText:
                        'Help them decide if they should order fromthis restaurant.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(title: '0/200', fontSize: 12),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FavouritePage()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
