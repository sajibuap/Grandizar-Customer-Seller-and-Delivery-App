/*
	 * Created by Rezaul Karim
	 * Created on Sat Oct 07 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: profile_attribute.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import '../../common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class ProfileAttribute extends StatelessWidget {
  final IconData ico;
  final String title;
  final String? text;
  const ProfileAttribute({super.key, required this.ico, required this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Icon(
                ico,
                color: Color(0xFFEB1933),
              ),
            ),
          ),
          CW.hGap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 14, color: color.proTitle),
              ),
              Text(
                text ?? '',
                style: TextStyle(fontSize: 14, color: color.proText),
              ),
            ],
          )
        ],
      ),
    );
  }
}
