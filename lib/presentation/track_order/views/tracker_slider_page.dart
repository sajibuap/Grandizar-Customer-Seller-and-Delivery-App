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
	 * Screen Name: tracker_slider_page.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/track_order/widgets/contact_button.dart';
import 'package:grandizar_customer_v2/presentation/track_order/widgets/rich_text_widget.dart';
import 'package:grandizar_customer_v2/presentation/track_order/widgets/track_order_timeline.dart';
// import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
//     as color;
// import 'package:sliding_up_panel/sliding_up_panel.dart';

class TrackerSliderPage extends StatelessWidget {
  final List<String> trackTitle;
  final Function onCallTap;
  const TrackerSliderPage({
    super.key,
    required this.trackTitle,
    required this.onCallTap
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CW.gap(5),
        Center(
          child: CustomWidget.svgAsset('top', 7, 70),
        ),
        CW.gap(15),
        ListTile(
          leading: CustomWidget.pngAsset('shop', 63, 63),
          title: Text(
            'Food Junction',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
            'Orderd at 06 Sept, 10:00pm',
            style: TextStyle(fontSize: 14, color: Color(0xFF7E7E7E)),
          ),
        ),
        ListTile(
          leading: SizedBox(
            height: 50,
            width: 63,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichOrderText(countx: '2x', product: 'Burger'),
              RichOrderText(countx: '1x', product: 'Harrish'),
            ],
          ),
          trailing: Text(
            '\$185.00',
            style: TextStyle(fontSize: 24),
          ),
        ),
        CW.gap(10),
        Column(
          children: [
            Text(
              '20 min',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'ESTIMATED DELEVERY TIME',
              style: TextStyle(fontSize: 14, color: Color(0xFF7E7E7E)),
            ),
          ],
        ),
        CW.gap(10),
        TrackerTimeLine(
          trackers: trackTitle,
        ),
        Container(
          width: width,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              border: Border.all(color: Colors.grey.withOpacity(0.5))
              // border: Border(top: BorderSide(color: color.bgColor))
              ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              tileColor: Colors.green,
              leading: ClipOval(
                child: CustomWidget.pngAsset('rider', 54, 54),
              ),
              title: Text(
                'Hamid Abd...',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Delivery Partner',
                style: TextStyle(fontSize: 14),
              ),
              trailing: Container(
                height: 88,
                width: 140,
                child: Row(
                  children: [
                    CallButton(
                      onTap: () {
                        onCallTap();
                      },
                    ),
                    MessageButton(
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
