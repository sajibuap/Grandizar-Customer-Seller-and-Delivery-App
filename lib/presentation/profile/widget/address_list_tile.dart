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
	 * Screen Name: address_list_tile.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizer
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class AddressListTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final String address;
  const AddressListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: color.addressText, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: icon,
          ),
        ),
        title: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          address,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey
          ),
        ),
        trailing: Container(
          // color: Colors.red,
          width: 50,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: CustomWidget.svgAsset('edit-icon', 20, 20),
              ),
              CW.hGap(10),
              GestureDetector(
                onTap: () {},
                child: CustomWidget.svgAsset('delete-icon', 20, 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
