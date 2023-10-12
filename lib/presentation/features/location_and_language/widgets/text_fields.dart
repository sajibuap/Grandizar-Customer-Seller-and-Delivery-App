import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class CustomBoxField extends StatelessWidget {
  const CustomBoxField(
      {super.key,
      required this.hintText,
      this.borderRadius = 15,
      this.suffixIcon,
      this.width = 360,
      this.controller,
      this.textInputType = TextInputType.text});

  final double borderRadius;
  final String hintText;
  final Widget? suffixIcon;
  final double width;
  final TextEditingController? controller;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: TextField(
            controller: controller,
            keyboardType: textInputType,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.awashColor,
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.yellow)),
                hintStyle: TextStyle(fontSize: 14.sp),
                hintText: hintText,
                suffixIcon: suffixIcon),
          ),
        ),
      ),
    );
  }
}
