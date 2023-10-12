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
	 * Screen Name: redeem_point_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';

import '../../common/red_elevated_button_large.dart';
import '../../constants/png_constants.dart';

class RedeemPointScreen extends StatefulWidget {
  const RedeemPointScreen({super.key});

  @override
  State<RedeemPointScreen> createState() => _RedeemPointScreenState();
}

class _RedeemPointScreenState extends State<RedeemPointScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(title: 'Redeem points'),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 52,
                width: 52,
                child: Image.asset(PngConstants.dollar),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Balance'),
                  Text(
                    '\$315.00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: width / 8, top: 15, right: 15, bottom: 15),
                height: 52,
                width: 52,
                child: Image.asset(PngConstants.point),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Points'),
                  Text(
                    '175.00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RedElevatedButtonLarge(
            text: 'Add Balance',
            onTap: addBalanceButtonTap,
          ),
        ],
      ),
    );
  }

  void addBalanceButtonTap() {

  }
}