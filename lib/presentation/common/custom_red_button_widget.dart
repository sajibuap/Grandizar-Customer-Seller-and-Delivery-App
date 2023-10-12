/*
	 * Created by Rezaul Karim
	 * Created on Fri Sep 29 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: custom_button_widget.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

class CustomRedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  const CustomRedButton({super.key, required this.text, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? const Color(0xFFFF1616),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
