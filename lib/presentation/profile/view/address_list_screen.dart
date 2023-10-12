/*
	 * Created by Rezaul Karim
	 * Created on Sun Oct 08 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: address_list_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizer
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/profile/widget/address_list_tile.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/red_elevated_button_large.dart';

class AddressListScreen extends StatefulWidget {
  const AddressListScreen({super.key});

  @override
  State<AddressListScreen> createState() => _AddressListScreenState();
}

class _AddressListScreenState extends State<AddressListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Address'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return AddressListTile(
                    icon: CustomWidget.svgAsset('home-icon', 18, 20),
                    title: 'Home',
                    address: '2464 Royal Ln. Mesa, New Jersey 45463',
                  );
                }),
          ),
          RedElevatedButtonLarge(text: 'Add new address', onTap: addNewAddressBtnClick),
          CW.gap(20),
        ],
      ),
    );
  }

  void addNewAddressBtnClick(){

  }
}
