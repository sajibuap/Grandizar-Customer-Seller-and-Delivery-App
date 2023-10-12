import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../category/model/category_model.dart';
import '../../common/food_product_widget.dart';
import '../../common/rating_bar.dart';
import '../../constants/svg_constants.dart';

import '../../messaging_user_list/views/chat_user_list_screen.dart';

class RestaurantLandingScreen extends StatefulWidget {
  @override
  State<RestaurantLandingScreen> createState() =>
      _RestaurantLandingScreenState();
}

class _RestaurantLandingScreenState extends State<RestaurantLandingScreen> {
  List<CategoryModel> categoryList = [];

  @override
  void initState() {
    categoryList.add(CategoryModel(categoryName: 'Burger Bistro'));
    categoryList.add(CategoryModel(categoryName: 'Smokin\' Burger'));
    categoryList.add(CategoryModel(categoryName: 'Bullseye Burgers'));
    categoryList.add(CategoryModel(categoryName: 'Chiken wings'));
    categoryList.add(CategoryModel(categoryName: 'Pizza'));
    categoryList.add(CategoryModel(categoryName: 'Burger'));
    categoryList.add(CategoryModel(categoryName: 'Showerma'));
    categoryList.add(CategoryModel(categoryName: 'Chiken wings'));
    categoryList.add(CategoryModel(categoryName: 'Pizza'));
    categoryList.add(CategoryModel(categoryName: 'Burger'));
    categoryList.add(CategoryModel(categoryName: 'Showerma'));
    categoryList.add(CategoryModel(categoryName: 'Chiken wings'));
    categoryList.add(CategoryModel(categoryName: 'Pizza'));
    categoryList.add(CategoryModel(categoryName: 'Burger'));
    categoryList.add(CategoryModel(categoryName: 'Showerma'));
    categoryList.add(CategoryModel(categoryName: 'Chiken wings'));
    super.initState();
  }

  final List<String> _dogeNames = [
    'Beagle',
    'Labrador',
    'Retriever',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: Image.network(
                  "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  fit: BoxFit.cover,
                  height: 250,
                  width: width,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext contect) =>
                                      ChatPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       InkWell(
              //         child:
              //         SvgPicture.asset(SvgConstants.cart,height: 70,width: 70,),
              //         onTap: (){
              //
              //         },
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: IconButton(
              //           icon: Icon(Icons.add_circle,color: Colors.red,size: 40,),
              //           onPressed: () {
              //           },
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
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
                  size: 35,
                ),
                Text(
                  '(421 Reviews)',
                  style: TextStyle(color: Color(0xFF5F60B9), fontSize: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          // Tags(
          //   itemCount: 5,
          //   itemBuilder: (int index){
          //     return Container(
          //           height: 30,
          //           width: 30,
          //           color: Colors.red,
          //     );
          //   },
          // ),

          ChipList(
            listOfChipNames: _dogeNames,
            activeBgColorList: [Theme.of(context).primaryColor],
            inactiveBgColorList: [Colors.white],
            activeTextColorList: [Colors.white],
            inactiveTextColorList: [Theme.of(context).primaryColor],
            listOfChipIndicesCurrentlySeclected: [0],

            //borderColorList: [Theme.of(context).primaryColor],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.4 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                      child: FoodProductWidget(
                        foodData: categoryList[index],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
