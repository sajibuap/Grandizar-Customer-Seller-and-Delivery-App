/*
	 * Created by Rezaul Karim
	 * Created on Mon Oct 02 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: amount_complete_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';

class AmountCompleteScreen extends StatefulWidget {
  const AmountCompleteScreen({super.key});

  @override
  State<AmountCompleteScreen> createState() => _AmountCompleteScreenState();
}

class _AmountCompleteScreenState extends State<AmountCompleteScreen> {
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
                    'You successfully added an amount, enjoy our service!',
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
          RedElevatedButtonLarge(text: 'Back to Wallet', onTap: goBackToWallet),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

  void goBackToWallet() {
    Navigator.of(context).pushNamedAndRemoveUntil('/wallet', (route) => false);
  }
}
