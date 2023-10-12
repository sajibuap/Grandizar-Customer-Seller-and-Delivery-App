/*
	 * Created by Rezaul Karim
	 * Created on Fri Oct 06 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: customer_profile.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/profile/view/customer_edit_profile.dart';
import 'package:grandizar_customer_v2/presentation/profile/widget/profile_attribute.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({super.key});

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        back: SizedBox(),
        title: 'Personal Info',
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CustomerEditProfile(),
                  ),
                );
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEB1933),
                ),
              )),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          CW.gap(20),
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  ClipOval(
                    child: Image.asset(PngConstants.profile),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: CustomWidget.svgAsset('edit', 31, 31),
                    ),
                  )
                ],
              ),
            ),
          ),
          CW.gap(20),
          Container(
            margin: const EdgeInsets.all(20),
            width: width,
            decoration: BoxDecoration(
                color: Color(0xFFF0F5FA),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ProfileAttribute(
                  ico: Icons.person,
                  title: 'FIRST NAME',
                  text: 'Khalid',
                ),
                ProfileAttribute(
                  ico: Icons.person,
                  title: 'LAST NAME',
                  text: 'Hossain',
                ),
                ProfileAttribute(
                  ico: Icons.email,
                  title: 'EMAIL',
                  text: 'persona@gmail.com',
                ),
                ProfileAttribute(
                  ico: Icons.phone,
                  title: 'PHONE NUMBER',
                  text: '408 307 0950',
                ),
                CW.gap(20)
              ],
            ),
          )
        ],
      ),
    );
  }
}
