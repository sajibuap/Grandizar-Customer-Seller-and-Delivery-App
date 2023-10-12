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
	 * Screen Name: dashboard.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/home/home_page.dart';

import '../../cart/view/cart_screen.dart';
import '../../category/view/all_category_screen.dart';
import '../../profile/view/customer_profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AllCategoryScreen(),
    CartScreen(),
    Container(),
    CustomerProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(PngConstants.home),
            label: 'Grandizer',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(PngConstants.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(PngConstants.cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(PngConstants.wishlist),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(PngConstants.account),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, //Color(0xFFEB1933),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
