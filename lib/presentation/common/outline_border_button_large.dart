/*
	 * Created by Rezaul Karim
	 * Created on Mon Oct 02 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: outline_border_button_large.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

class OutlineBorderButtonLarge extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? borderColor;
  const OutlineBorderButtonLarge({super.key, required this.text, required this.onTap, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: OutlinedButton(
        onPressed: () => onTap(),
        style: OutlinedButton.styleFrom(//0xFFFF1616
          backgroundColor: const Color(0xFFFFFFFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size.fromHeight(60),
          side: BorderSide(color: borderColor ?? Color(0xFFFF1616), width: 2.0)
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFFFF1616),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}