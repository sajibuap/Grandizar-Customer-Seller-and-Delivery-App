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
	 * Screen Name: menu_header.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import '../../common/custom_widgets.dart';
import '../../constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Center(
              child: Container(
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(PngConstants.profile),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: CustomWidget.svgAsset('edit', 31, 31),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CW.hGap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Khalid Hossain', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('+1987 654 3210', style: TextStyle(fontSize: 16, color: color.proText),),
                Text('persona@gmail.com', style: TextStyle(fontSize: 16, color: color.proText),)
              ],
            )
        ],
      ),
    );
  }
}