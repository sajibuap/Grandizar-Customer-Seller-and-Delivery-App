import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grandizar_customer_v2/presentation/category/model/category_model.dart';
import 'package:grandizar_customer_v2/presentation/common/rating_bar.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';

import '../food_details/view/food_details_screen.dart';

class RestaurantWidget extends StatelessWidget {
  final CategoryModel? foodData;
  RestaurantWidget({@required this.foodData});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FoodDetailsScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          //border: Border.all(color: Colors.grey)
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    width: width - 40,
                    height: width / 3.4,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            SvgConstants.unfavourite,
                            height: 35,
                            width: 35,
                          )),
                    )),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffEB1933),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Text(
                        '20% OFF',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cafenio Restaurant',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      RatingBar(
                        rating: 5,
                        ratingCount: 5,
                        size: 15,
                      ),
                    ],
                  ),
                  Text(
                    'Mcdonalds - Al Olaya',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
