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
	 * Screen Name: menu_container.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

class MenuContainer extends StatelessWidget {
  final List<Widget> children;
  const MenuContainer({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20),
      width: width,
      decoration: BoxDecoration(
          color: Color(0xFFF0F5FA), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: children,
      ),
    );
  }
}
