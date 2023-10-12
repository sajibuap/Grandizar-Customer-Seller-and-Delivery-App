import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
      this.txtColor = AppColors.primaryBlackColor,
      required this.fontSize,
      this.textAlign = TextAlign.center,
      this.padding = 8,
      this.fontWeight = FontWeight.w400,
      this.textDecoration = TextDecoration.none});

  final String title;
  final Color txtColor;
  final double fontSize;
  final double padding;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        title,
        textAlign: textAlign,
        style: TextStyle(
            fontSize: fontSize,
            color: txtColor,
            decoration: textDecoration,
            fontWeight: fontWeight,
            fontFamily: 'Sen'),
      ),
    );
  }
}
