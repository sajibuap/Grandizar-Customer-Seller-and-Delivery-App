/*
	 * Created by Rezaul Karim
	 * Created on Tue Oct 03 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: payment_success_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import '../../common/custom_widgets.dart';
import '../../common/red_elevated_button_large.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 1,
          ),
          Center(
            child: Column(
              children: [
                CustomWidget.svgAsset('success', 228, 207),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'You successfully marked a payment method, enjoy our service!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF272727),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          RedElevatedButtonLarge(text: 'Track Order', onTap: goBackToHome),
          SizedBox(
            height: 10,
          ),
          RedElevatedButtonLarge(text: 'Back to Home', onTap: goBackToHome),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  void goBackToHome() {}
}
