import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/restaurant_widget.dart';

class RestaurantNearYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 3,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return RestaurantWidget(foodData: null);
        });
  }
}
