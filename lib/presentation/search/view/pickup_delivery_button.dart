import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';

class PickUpDeliveryButton extends StatelessWidget {
  const PickUpDeliveryButton(
      {super.key,
      required this.image,
      required this.onPressed,
      this.width = 170,
      this.height = 70,
      this.buttonColor = AppColors.redColor,
      required this.isSelected,
      required this.title});

  final String title;
  final String image;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              side: const BorderSide(width: 1, color: AppColors.redColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Row(
            children: [
              SvgPicture.asset(
                image,
              ),
              Text(title)
            ],
          )),
    );
  }
}
