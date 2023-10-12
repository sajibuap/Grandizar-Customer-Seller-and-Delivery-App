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
	 * Screen Name: menu_listtile.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class MenuListTile extends StatelessWidget {
  final IconData? ico;
  final IconData? fIco;
  final String title;
  final VoidCallback? onTap;
  const MenuListTile({super.key, this.fIco, this.ico, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: ico != null ?
          Icon(
            ico,
            color: Color(0xFFEB1933),
          ): 
          FaIcon(
            fIco,
            color: color.themeColor,
          ),
        ),
      ),
      title: Text(title, style: TextStyle(color: color.proTitle, fontSize: 16),),
      trailing: Icon(Icons.chevron_right, color: color.themeColor,),
    );
  }
}
