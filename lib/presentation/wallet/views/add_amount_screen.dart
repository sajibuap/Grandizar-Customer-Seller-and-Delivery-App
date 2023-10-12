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
	 * Screen Name: add_amount_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/outline_border_button_large.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';

import '../../shared/screen/add_credit_card_screen.dart';

class AddAmountToWalletScreen extends StatefulWidget {
  const AddAmountToWalletScreen({super.key});

  @override
  State<AddAmountToWalletScreen> createState() =>
      _AddAmountToWalletScreenState();
}

class _AddAmountToWalletScreenState extends State<AddAmountToWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add Amount'),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add a payment method to add to your balance',
              style: TextStyle(color: Color(0xFF464E57)),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(PngConstants.notselected),
                      title: Text(
                        '\$25',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    );
                  }),
            ),
            Spacer(
              flex: 1,
            ),
            RedElevatedButtonLarge(text: 'Confirm', onTap: onConfirmButtonTap),
            const SizedBox(
              height: 10,
            ),
            OutlineBorderButtonLarge(
              text: 'Cancel',
              onTap: () {
                    Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }

  void onConfirmButtonTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddCreditCardScreen(title: 'Add Card', buttonTitle: 'Confirm',amountTitle: 'AMOUNT', ),
      ),
    );
  }
}
