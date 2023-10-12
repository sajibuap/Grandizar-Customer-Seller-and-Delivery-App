import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandizar_customer_v2/presentation/common/rating_bar.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';

import '../../restaurant_landing/view/restaurant_landing_screen.dart';

class FoodDetailsScreen extends StatefulWidget {
  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int selectedOption = 1;
  String? radioVal;

  @override
  Widget build(BuildContext context) {
    double expandedHeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: expandedHeight),
              pinned: true,
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                //SizedBox(height: 20,),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'KFC MAKHA',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'From ',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            '\$240',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        size: 15,
                        color: Colors.red,
                      ),
                      Text(
                        '  Address - 4151 Al Salam District Riyad',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar(
                        rating: 5,
                        ratingCount: 5,
                        size: 25,
                      ),
                      Text(
                        '(421 Reviews)',
                        style:
                            TextStyle(color: Color(0xFF5F60B9), fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: Text(
                    'Some text some text.some text.some text.some '
                    'text.some text.some text some text some text'
                    'some textsome textsome textsome textsome textsome textsome textsome text',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(5),
                      dashPattern: [5, 5],
                      color: Color(0xff08A647),
                      strokeWidth: 2,
                      child: Container(
                        color: Color(0xffF0FAF4),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            "5% OFF at Checkout",
                            style: TextStyle(
                                color: Color(0xffEB1933),
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Special Level',
                              style: TextStyle(
                                  color: Color(0xFF272727), fontSize: 11),
                            ),
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFEBE4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  'Required',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Text(
                          'Select One',
                          style: TextStyle(
                              color: Color(0xFF272727),
                              fontSize: 8,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                                Text(
                                  'Regular',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                                Text(
                                  'Spicy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                                Text(
                                  'Extra Spicy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Instructions',
                        style: TextStyle(
                            color: Color(0xFF272727),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Some text some text.some text.some text.some '
                        'text.some text.some text some text some text'
                        'some textsome textsome textsome textsome textsome textsome textsome text',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.red),
                        minLines: 3,
                        maxLines: 5,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFF0F5FA),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xFFF0F5FA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ingredients',
                        style: TextStyle(
                            color: Color(0xFF272727),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5),
                          itemCount: 9,
                          itemBuilder: (BuildContext ctx, index) {
                            return Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: InkWell(
                                    onTap: () {},
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Icon(
                                                Icons.emoji_food_beverage,
                                                size: 20,
                                                color: Colors.amber,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color(0xFFFFEBE4),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                'Pepsi',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )));
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(SvgConstants.minus),
                                ),
                                decoration: BoxDecoration(
                                    //color: Color(0xFFFFEBE4),
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(SvgConstants.add),
                                ),
                                decoration: BoxDecoration(
                                    //color: Color(0xFFFFEBE4),
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 15, bottom: 10, right: 15),
                            child: Text(
                              'Add To Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEB1933),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //         (_, index) => ListTile(
            //       title: Text("Index: $index"),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
          child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            fit: BoxFit.cover,
            height: expandedHeight,
          ),
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              'Food name',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    SvgConstants.back,
                    height: 45,
                    width: 45,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    SvgConstants.unfavourite,
                    height: 40,
                    width: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: SvgPicture.asset(
                  SvgConstants.cart,
                  height: 70,
                  width: 70,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext cotext) =>
                              RestaurantLandingScreen()));
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.red,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
