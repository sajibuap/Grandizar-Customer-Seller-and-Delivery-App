import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/application/language/language_provider.dart';

class SplashFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Words.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            words.splash_5,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEB1933),
            ),
          ),
          SizedBox(height: 20), // Add spacing between text and image
          Image.asset(
            PngConstants.category5, // Replace with your image file
            width: 332, // Adjust the width as needed
          ),
        ],
      ),
    );
  }
}
