/*
	 * Created by Rezaul Karim
	 * Created on Wed Oct 04 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: address_label_buttons.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

class LabelElevatedButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color? backColor;
  final Color? textColor;
  const LabelElevatedButton(
      {super.key, required this.text, required this.onTap, this.backColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ElevatedButton.styleFrom(
        backgroundColor: backColor,//Color(0xFFF0F5FA),//Color(0xFFFF1616),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: textColor,//color.bgColor1,
        ),
      ),
    );
  }
}
