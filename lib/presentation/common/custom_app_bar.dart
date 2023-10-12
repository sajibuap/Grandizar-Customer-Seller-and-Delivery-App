/*
	 * Created by Rezaul Karim
	 * Created on Thu Sep 28 2023
	 *
	 * Updated by Shah Kutub
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: custom_app_bar.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? ext;
  final Widget? back;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final TabBar? bottom;
  const CustomAppBar(
      {super.key,
      this.ext,
      required this.title,
      this.back,
      this.actions,
      this.bottom,
      this.titleWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: back ?? defaultBackButton(context),
      title: titleWidget == null
          ? Text(
              title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          : titleWidget,
      actions: actions,
      bottom: bottom,
    );
  }

  defaultBackButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      focusColor: Colors.transparent,
      icon: CustomWidget.svgAsset('back', 45, 45),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (ext ?? 0));
}
