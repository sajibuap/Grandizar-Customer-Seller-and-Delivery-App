/*
	 * Created by Rezaul Karim
	 * Created on Tue Oct 03 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: custom_image.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class CustomImageCircle extends StatelessWidget {
  final double size;
  final IconData icon;
  const CustomImageCircle({super.key, required this.size, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: color.themeColor, borderRadius: BorderRadius.circular(size/2)),
      child: Icon(
        icon,
        color: color.white,
      ),
    );
  }
}
