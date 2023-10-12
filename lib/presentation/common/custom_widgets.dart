/*
	 * Created by Rezaul Karim
	 * Created on Thu Sep 28 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Updated on 
	 *
	 * Screen Name: custom_widgets.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

import '../constants/svg_constants.dart';

class CustomWidget {
  static svgAsset(String icon, double width, double height) {
    return SvgPicture.asset(
      'assets/images/svgs/$icon.svg',
      semanticsLabel: '',
      height: width,
      width: height,
    );
  }

  static pngAsset(String icon, double width, double height) {
    return Image.asset(
      'assets/images/pngs/$icon.png',
      height: width,
      width: height,
    );
  }

  static Widget cartWidget(int cartCount) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
          child: Container(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            SvgPicture.asset(
              SvgConstants.cart,
              height: 50,
              width: 50,
            ),
            Positioned(
                right: 0,
                child: badges.Badge(
                  badgeContent: Text(
                    '$cartCount',
                    style: TextStyle(fontSize: 7,color: Colors.white),
                  ),
                )),
          ],
        ),
      )),
    );
  }

  static defaultBackButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      focusColor: Colors.transparent,
      icon: CustomWidget.svgAsset('back', 45, 45),
    );
  }
}

class CW{
  static gap(double val) {
    return SizedBox(
      height: val,
    );
  }

  static hGap(double val) {
    return SizedBox(
      width: val,
    );
  }
}
