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
	 * Screen Name: add_card_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_text_field.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';

import '../../common/custom_widgets.dart';


class AddCardScreen extends StatefulWidget {
  final String title;
  final String buttonTitle;
  const AddCardScreen({super.key, required this.title , required this.buttonTitle});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {

  TextEditingController cardHolderName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cvc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        back: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          focusColor: Colors.transparent,
          icon: CustomWidget.svgAsset('close', 45, 45),
        ),
        title: widget.title,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(controller: cardHolderName, hintText: 'Card Holder Name', maxLines: 1, title: 'CARD HOLDER NAME',),
            const SizedBox(height: 10,),
            CustomTextField(controller: cardNumber, hintText: ' _ _ _ _   _ _ _ _', maxLines: 1, title: 'CARD NUMBER', leading: Text('2134'),),
            const SizedBox(height: 10,),
            Row(
              children: [
                CustomTextField(controller: expiryDate, hintText: 'mm/yyyy', maxLines: 1, title: 'EXPIRY DATE', width: width/2-25,),
                SizedBox(width: 5,),
                CustomTextField(controller: cvc, hintText: '***', maxLines: 1, title: 'CVC', obscureText: true, width: width/2-25,),
              ],
            ),
            Spacer(flex: 1,),
            RedElevatedButtonLarge(text: widget.buttonTitle, onTap: confirmOnTap)
          ],
        ),
      ),
    );
  }
  void confirmOnTap() {

  }
}
