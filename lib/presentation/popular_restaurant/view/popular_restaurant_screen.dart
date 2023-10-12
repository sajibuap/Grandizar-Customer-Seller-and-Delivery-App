import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/restaurant_landing/view/restaurant_landing_screen.dart';

class PopularRestaurantScreen extends StatefulWidget {
  @override
  State<PopularRestaurantScreen> createState() =>
      _PopularRestaurantScreenState();
}

class _PopularRestaurantScreenState extends State<PopularRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: CustomAppBar(
        title: 'Popular Restaurant',
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 170,
                childAspectRatio: 2.9 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RestaurantLandingScreen(),
                  ));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/restaurant-logo%2Crestaurant-icon-logo-free-design-template-e4e92c7d3b5631a777fce7a5d629a00a_screen.jpg?ts=1662468709",
                        width: width / 2.6,
                        height: width / 2.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Text(categoryList[index].categoryName!,
                    //   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
