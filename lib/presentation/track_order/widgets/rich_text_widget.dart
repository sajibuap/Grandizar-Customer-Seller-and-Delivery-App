/*
	 * Created by Rezaul Karim
	 * Created on Thu Oct 05 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: rich_text_widget.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

class RichOrderText extends StatelessWidget {
  final String countx;
  final String product;
  const RichOrderText({
    super.key,
    required this.countx,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '',
        children: [
          TextSpan(
            text: countx,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' $product',
            style: const TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
