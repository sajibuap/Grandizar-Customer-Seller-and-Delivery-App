/*
	 * Created by Shah Kutub
	 * Created on Tue Oct 10 2023
	 *
	 * Updated by
	 * Updated on
	 *
	 * Reviewed by
	 * Reviewed on
	 *
	 * Screen Name: check_out_screen.dart
	 * Description:
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/search/view/pickup_delivery_button.dart';

import '../../common/custom_app_bar.dart';
import '../../constants/png_constants.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int? buttonIndex = 0;
  List<TipsDataModel> tipsList = [];
  bool isPickUp = false;
  @override
  void initState() {
    tipsList.add(TipsDataModel('NONE', true));
    tipsList.add(TipsDataModel('10 SAR', false));
    tipsList.add(TipsDataModel('20 SAR', false));
    tipsList.add(TipsDataModel('30 SAR', false));
    tipsList.add(TipsDataModel('Other', false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Check Out',
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PickUpDeliveryButton(
                          title: 'Delivery',
                          isSelected: isPickUp,
                          image: SvgConstants.unfavourite,
                          onPressed: () {
                            isPickUp = false;
                            setState(() {});
                          },
                          buttonColor: !isPickUp
                              ? AppColors.redLightColor
                              : AppColors.disableColor,
                        ),
                        PickUpDeliveryButton(
                          title: 'Pick Up',
                          isSelected: isPickUp,
                          image: SvgConstants.pickUpBlack,
                          onPressed: () {
                            isPickUp = true;
                            setState(() {});
                          },
                          buttonColor: isPickUp
                              ? AppColors.redLightColor
                              : AppColors.disableColor,
                        ),
                      ]),

                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffFFF6F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Address',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Faisal Alam\n Building no. 2771,Mecca 24233, \nSaudi Arabia +91712365478'),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 5,
                    color: Color(0xffF7F7F7),
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    //padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          PngConstants.delivery,
                          height: 80,
                          width: 80,
                        ),
                        Text.rich(TextSpan(text: '', children: [
                          TextSpan(
                            text: 'Estimated Delivery Time',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: '\n 20 mins',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ])),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 5,
                    color: Color(0xffF7F7F7),
                  ),
                  Text(
                    'Tips for Rider',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 45,
                    child: ListView.builder(
                        itemCount: tipsList.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              tipsList.forEach((element) {
                                if (tipsList[index].tips == element.tips) {
                                  if (!element.isSelected!) {
                                    element.isSelected = true;
                                    print(element.tips! +
                                        ':' +
                                        element.isSelected.toString());
                                  } else {
                                    element.isSelected = false;
                                    print(element.tips! +
                                        ':' +
                                        element.isSelected.toString());
                                  }
                                } else {
                                  element.isSelected = false;
                                  print(element.tips! +
                                      ':' +
                                      element.isSelected.toString());
                                }
                              });
                              setState(() {});
                            },
                            child: tipsList[index].isSelected!
                                ? Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFECEE),
                                      borderRadius: BorderRadius.circular(8),
                                      //border: Border.all(color: Colors.grey,width: 0.50)
                                    ),
                                    child: Text(
                                      tipsList[index].tips!,
                                      style:
                                          TextStyle(color: Color(0xffEB1933)),
                                    ),
                                  )
                                : Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      //border: Border.all(color: Colors.grey,width: 0.50)
                                    ),
                                    child: Text(
                                      tipsList[index].tips!,
                                    ),
                                  ),
                          );
                        }),
                  ),

                  // Container(
                  //   //width: width,
                  //   height: 120,
                  //   child:Column(
                  //     children: [
                  //       Text('Tips for Rider',style: TextStyle(fontWeight: FontWeight.bold),),
                  //       ListView.builder(
                  //           itemCount: 5,
                  //           physics: ClampingScrollPhysics(),
                  //           shrinkWrap: true,
                  //           scrollDirection: Axis.horizontal,
                  //           itemBuilder: (BuildContext context, int index) {
                  //             return Container(
                  //               alignment: Alignment.center,
                  //               padding: EdgeInsets.all(4),
                  //               decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(8),
                  //                   border: Border.all(color: Colors.grey,width: 0.50)
                  //               ),
                  //               child: Text('None'),
                  //             );
                  //           }),
                  //     ],
                  //   ),
                  // )
                ]),
              ),
            ],
          ),
        ));
  }
}

class TipsDataModel {
  String? tips;
  bool? isSelected;

  TipsDataModel(this.tips, this.isSelected);
}
