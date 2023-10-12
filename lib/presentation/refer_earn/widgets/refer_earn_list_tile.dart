/*
	 * Created by Rezaul Karim
	 * Created on Fri Sep 29 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Updated on 
	 *
	 * Screen Name: refer_earn_list_tile.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import '../../constants/png_constants.dart';

class ReferListTile {
  referalPhoto() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFEB1933)),
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(image: AssetImage(PngConstants.avatar))),
    );
  }

  referFlag(Color color) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 25,
      width: 100,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: const Padding(
        padding: EdgeInsets.all(2),
        child: Text(
          'Reffered',
          style: TextStyle(color: Colors.white, fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
