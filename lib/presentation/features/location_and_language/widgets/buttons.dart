import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';

import 'texts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width = 330,
      this.height = 56,
      this.buttonColor = AppColors.redColor});

  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: CustomText(
              title: title,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              txtColor: buttonColor == AppColors.redColor
                  ? AppColors.whiteColor
                  : AppColors.redColor)),
    );
  }
}

class CustomButtonMedium extends StatelessWidget {
  const CustomButtonMedium(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width = 155,
      this.height = 56,
      this.buttonColor = AppColors.redColor});

  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: CustomText(
              title: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              txtColor: AppColors.whiteColor)),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width = 155,
      this.height = 56,
      this.buttonColor = AppColors.redColor,
      required this.prefixIcon});

  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              side: BorderSide(width: 1, color: AppColors.disableColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixIcon,
              CustomText(
                  title: title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  txtColor: buttonColor == AppColors.whiteColor
                      ? AppColors.primaryBlackColor
                      : AppColors.whiteColor),
            ],
          )),
    );
  }
}
