/*
	 * Created by Rezaul Karim
	 * Created on Thu Oct 05 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: refer_new_contacts.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/address_text_field.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';

class ReferNewContactsScreen extends StatefulWidget {
  const ReferNewContactsScreen({super.key});

  @override
  State<ReferNewContactsScreen> createState() => _ReferNewContactsScreenState();
}

class _ReferNewContactsScreenState extends State<ReferNewContactsScreen> {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController phoneTxt = TextEditingController();

  List<String> items =['🇸🇦', '🇺🇸'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          AddressTextField(
            controller: emailTxt,
            hintText: 'Email Address',
            title: 'Email',
            leading: Icon(
              Icons.email,
              color: Colors.grey.withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: width / 2 - 40,
                color: Color(0xFFC8C8C8),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Or',
                style: TextStyle(color: Color(0xFFC8C8C8)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: width / 2 - 40,
                color: Color(0xFFC8C8C8),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AddressTextField(
            controller: phoneTxt,
            hintText: '966-50-123456',
            title: 'Phone Number',
            leading: flagDropDown(),
          ),
          SizedBox(
            height: 20,
          ),
          RedElevatedButtonLarge(text: 'Invite', onTap: onInviteButtonTap),
          
        ],
      ),
    );
  }

  void onInviteButtonTap() {

  }

  Widget flagDropDown(){
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
