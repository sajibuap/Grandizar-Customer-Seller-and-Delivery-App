/*
	 * Created by Rezaul Karim
	 * Created on Sat Oct 07 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: customer_edit_profile.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';

import '../../common/address_text_field.dart';
import '../../common/custom_widgets.dart';
import '../../common/red_elevated_button_large.dart';
import '../../constants/png_constants.dart';

import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class CustomerEditProfile extends StatefulWidget {
  const CustomerEditProfile({super.key});

  @override
  State<CustomerEditProfile> createState() => _CustomerEditProfileState();
}

class _CustomerEditProfileState extends State<CustomerEditProfile> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  List<String> items = ['🇸🇦', '🇺🇸'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Profile'),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            CW.gap(20),
            Center(
              child: Container(
                height: 130,
                width: 130,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(PngConstants.profile),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                          onTap: () {},
                          child: CustomWidget.svgAsset('edit', 31, 31)),
                    )
                  ],
                ),
              ),
            ),
            CW.gap(20),
            AddressTextField(
              leading: Icon(
                Icons.person,
                color: color.eProText,
              ),
              controller: firstName,
              hintText: 'First Name',
              title: 'FIRST NAME',
            ),
            CW.gap(10),
            AddressTextField(
              leading: Icon(
                Icons.person,
                color: color.eProText,
              ),
              controller: lastName,
              hintText: 'Last Name',
              title: 'LAST NAME',
            ),
            CW.gap(10),
            AddressTextField(
              leading: Icon(
                Icons.email,
                color: color.eProText,
              ),
              controller: email,
              hintText: 'Email Address',
              title: 'EMAIL',
            ),
            CW.gap(10),
            AddressTextField(
              leading: flagDropDown(),
              controller: phoneNumber,
              hintText: '966-50-123456',
              title: 'PHONE NUMBER',
            ),
            Spacer(flex: 1,),
            RedElevatedButtonLarge(text: 'Save', onTap: onSave, horiz: 0,),
            CW.gap(15)
          ],
        ),
      ),
    );
  }

  void onSave(){
    Navigator.of(context).pop();
  }

  Widget flagDropDown() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Text(
          items[0],
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).hintColor,
          ),
        ),
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    '$item ',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: const ButtonStyleData(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 60,
          width: 75,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
      ),
    );
  }
}
