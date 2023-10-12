import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/restaurant_landing/view/restaurant_landing_screen.dart';

class PopularRestaurent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 150,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RestaurantLandingScreen(),
                  ));
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomWidget.pngAsset('kfc', 70, 70),
                    )),
              );
            }),
      ),
    );
  }
}
