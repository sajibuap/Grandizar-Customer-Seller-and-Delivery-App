import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://img.freepik.com/premium-vector/food-delivery-online-mobile-phone-shopping-online-online-food-order-internet-ecommerce-concept-website-banner-3d-perspective-vector-illustration_473922-160.jpg?w=740',
  'https://img.freepik.com/premium-vector/food-delivery-online-mobile-phone-shopping-online-online-food-order-internet-ecommerce-concept-website-banner-3d-perspective-vector-illustration_473922-160.jpg?w=740',
  'https://img.freepik.com/premium-vector/food-delivery-online-mobile-phone-shopping-online-online-food-order-internet-ecommerce-concept-website-banner-3d-perspective-vector-illustration_473922-160.jpg?w=740',
  'https://img.freepik.com/premium-vector/food-delivery-online-mobile-phone-shopping-online-online-food-order-internet-ecommerce-concept-website-banner-3d-perspective-vector-illustration_473922-160.jpg?w=740',
];

class HomeBanner extends StatelessWidget {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
                margin: EdgeInsets.only(left: 3, right: 3),
                //color: Colors.amber,
                width: double.infinity,
                // decoration: BoxDecorations.buildBoxDecoration_1(),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/placeholder_rectangle.jpg',
                      image: item,
                      height: 140,
                      fit: BoxFit.cover,
                    ))),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 338 / 140,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeInExpo,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}
