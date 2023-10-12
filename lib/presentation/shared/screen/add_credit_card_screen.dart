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
	 * Screen Name: add_master_card_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/common/outline_border_button_large.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/wallet/model/card_type.dart';
import 'package:grandizar_customer_v2/presentation/wallet/views/amount_complete_screen.dart';

import 'add_card_screen.dart';

class AddCreditCardScreen extends StatefulWidget {
  final String title;
  final String buttonTitle;
  final String amountTitle;
  const AddCreditCardScreen(
      {super.key,
      required this.title,
      required this.buttonTitle,
      required this.amountTitle});

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  List<CardType> cardTypeList = [
    CardType(imgName: 'mastercard', title: 'Master Card', isSelected: true),
    CardType(imgName: 'visa', title: 'Visa'),
    CardType(imgName: 'paypal', title: 'Paypal'),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cardTypeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    CardType cardType = cardTypeList[index];
                    return GestureDetector(
                      onTap: () {
                        for (CardType ct in cardTypeList) {
                          ct.isSelected = false;
                          int indx = cardTypeList.indexOf(ct);
                          cardTypeList[indx] = ct;
                        }
                        int indx = cardTypeList.indexOf(cardType);
                        cardType.isSelected = true;
                        cardTypeList[indx] = cardType;
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 85,
                        height: 93,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: cardType.isSelected
                                          ? color.themeColor
                                          : Colors.transparent,
                                      width: 2)),
                              child: CustomWidget.svgAsset(
                                  cardType.imgName, 85, 72),
                            ),
                            Text(
                              cardType.title,
                              style: TextStyle(
                                  color: color.listText, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Visibility(
            visible: false,
            child: Container(
              margin: const EdgeInsets.all(10),
              width: width,
              height: 200,
              decoration: BoxDecoration(
                  color: color.bgColor1.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Image.asset(PngConstants.card),
                  Text(
                    'No master card added',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'You can add a mastercard and save it for later',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF272727),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: true,
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2.0,
                        child: ListTile(
                          tileColor: color.tileColor,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Master Card',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: color.textColor),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: color.bgColor,
                                    ),
                                    child: CustomWidget.svgAsset(
                                        'mastericon', 28, 10),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '*************436',
                                    style: TextStyle(
                                        fontSize: 16, color: color.textColor),
                                  )
                                ],
                              )
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {},
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
          OutlineBorderButtonLarge(
            text: 'ADD NEW',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddCardScreen(
                      title: 'Add Card', buttonTitle: 'Confirm'),
                ),
              );
            },
            borderColor: Color(0xFFF0F5FA),
          ),
          Spacer(
            flex: 1,
          ),
          Spacer(
            flex: 1,
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Text('${widget.amountTitle}: '),
              Text(
                '\$25.00',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          RedElevatedButtonLarge(text: widget.buttonTitle, onTap: confirmOnTap),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  void confirmOnTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AmountCompleteScreen(),
      ),
    );
  }
}
