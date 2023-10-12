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
	 * Screen Name: wallet_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/wallet/views/add_amount_screen.dart';
import 'package:grandizar_customer_v2/presentation/wallet/views/redeem_point_screen.dart';
import 'package:grandizar_customer_v2/presentation/wallet/widgets/custom_image.dart';

import '../../common/custom_app_bar.dart';
import '../../common/red_elevated_button_large.dart';
import '../../constants/png_constants.dart';
import '../widgets/group_wallet_list.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  List elements = [
    {'name': 'John', 'group': 'Today'},
    {'name': 'Will', 'group': 'Yesterday'},
    {'name': 'Beth', 'group': 'Today'},
    {'name': 'Miranda', 'group': 'Yesterday'},
    {'name': 'Mike', 'group': '29 Jun'},
    {'name': 'Danny', 'group': '29 Jun'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Wallet'),
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
            height: 10,
          ),
          RedElevatedButtonLarge(
            text: 'Add Balance',
            onTap: addBalanceBottomSheet,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GroupListWallet(
            elements: elements,
          ))
        ],
      ),
    );
  }

  void addBalanceBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: [
                ListTile(
                    leading: CustomImageCircle(
                      icon: Icons.add,
                      size: 30,
                    ),
                    title: Text('One-time add'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AddAmountToWalletScreen(),
                        ),
                      );
                    }),
                ListTile(
                  leading: CustomImageCircle(
                    icon: Icons.star,
                    size: 30,
                  ),
                  title: Text('Redeeming points'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RedeemPointScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        });
  }
}
