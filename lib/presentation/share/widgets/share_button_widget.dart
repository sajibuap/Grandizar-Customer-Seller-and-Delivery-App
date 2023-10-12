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
	 * Screen Name: share_button_widget.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import '../../constants/png_constants.dart';

class ShareButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onTap;
  const ShareButton({super.key, required this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 56,
        width: 56,
        child: Image.asset('${PngConstants.pngPath}/share/$buttonTitle.png'),
      ),
    );
  }
}