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
	 * Screen Name: drawer_menu.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grandizar_customer_v2/presentation/cart/view/cart_screen.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;
import 'package:grandizar_customer_v2/presentation/features/Marketplace/order_page.dart';
import 'package:grandizar_customer_v2/presentation/messaging_user_list/views/chat_user_list_screen.dart';
import 'package:grandizar_customer_v2/presentation/notification/views/notification_list_screen.dart';
import 'package:grandizar_customer_v2/presentation/profile/view/customer_profile.dart';
import 'package:grandizar_customer_v2/presentation/profile/widget/menu_container.dart';
import 'package:grandizar_customer_v2/presentation/profile/widget/menu_header.dart';
import 'package:grandizar_customer_v2/presentation/profile/widget/menu_listtile.dart';
import 'package:grandizar_customer_v2/presentation/wallet/views/wallet_screen.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: color.themeColor,
              clipBehavior: Clip.antiAlias, // Add This
              child: MaterialButton(
                height: 35,
                color: color.themeColor,
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 13.0, color: Colors.white)),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          MenuHeader(),
          CW.gap(20),
          MenuContainer(children: [
            MenuListTile(
              ico: Icons.person,
              title: 'Personal Info',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerProfile()),
                );
              },
            ),
            MenuListTile(fIco: FontAwesomeIcons.map, title: 'Addresses'),
          ]),
          CW.gap(20),
          MenuContainer(children: [
            MenuListTile(
              ico: Icons.format_list_bulleted,
              title: 'My Orders',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderPage()),
                );
              },
            ),
            MenuListTile(
                ico: Icons.local_mall,
                title: 'Cart',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),
                  );
                }),
            MenuListTile(ico: Icons.favorite_border, title: 'Favourite'),
            MenuListTile(
                ico: Icons.notifications_none,
                title: 'Notifications',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationListScreen()),
                  );
                }),
            MenuListTile(
                fIco: FontAwesomeIcons.comment,
                title: 'Messages',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage()),
                  );
                }),
            MenuListTile(
                fIco: FontAwesomeIcons.wallet,
                title: 'Wallet',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WalletScreen()),
                  );
                }),
          ]),
          CW.gap(20),
          MenuContainer(children: [
            MenuListTile(ico: Icons.settings, title: 'Settings'),
            MenuListTile(ico: Icons.exit_to_app, title: 'Refer & Earn'),
            MenuListTile(fIco: FontAwesomeIcons.users, title: 'Contact Us'),
            MenuListTile(ico: Icons.info_outline, title: 'About Grandizar'),
          ]),
        ],
      ),
    );
  }
}
