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
	 * Screen Name: refer_earn_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/refer_earn/views/refer_new_contacts.dart';
import '../../common/custom_app_bar.dart';
import '../../constants/png_constants.dart';
import '../../share/views/share_screen.dart';
import '../widgets/refer_earn_list_tile.dart';

class ReferEarnScreen extends StatefulWidget {
  const ReferEarnScreen({super.key});

  @override
  State<ReferEarnScreen> createState() => _ReferEarnScreenState();
}

class _ReferEarnScreenState extends State<ReferEarnScreen> {
  ReferListTile rlt = ReferListTile();

  List<Tab> tabList = [
    const Tab(
      text: 'My Referrers',
    ),
    const Tab(
      text: 'Phone Contact',
    ),
    const Tab(
      text: 'New Contacts',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          ext: 50,
          title: 'Refer & Earn',
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => const ShareScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 45,
                width: 45,
                child: Image.asset(PngConstants.share),
              ),
            )
          ],
          bottom: TabBar(
            tabs: tabList,
            indicatorColor: const Color(0xFFEB1933),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              myRerfferalListView(),
              myRerfferalListView(),
              ReferNewContactsScreen()
            ],
          ),
        ),
      ),
    );
  }

  myRerfferalListView() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            color: const Color(0xFFF0F5FA),
            height: 100,
            child: Row(
              children: [
                rlt.referalPhoto(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Adam Wiley'),
                      const Text('+1 917 913 4501'),
                      rlt.referFlag(Color(0xFFEB1933))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
