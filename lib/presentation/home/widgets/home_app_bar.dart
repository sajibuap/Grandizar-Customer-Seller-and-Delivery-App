/*
	 * Created by Rezaul Karim
	 * Created on Thu Sep 28 2023
	 *
	 * Updated by 
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

import '../../common/custom_widgets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? back;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final TabBar? bottom;
  const HomeAppBar(
      {super.key,
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
      onPressed: () {},
      focusColor: Colors.transparent,
      icon: CustomWidget.svgAsset('back', 45, 45),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
