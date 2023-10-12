import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';
import 'package:grandizar_customer_v2/presentation/common/restaurant_widget.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';

import '../../category/model/category_model.dart';
import '../../common/food_product_widget.dart';

class SearchFoodRestaurant extends StatefulWidget {
  @override
  State<SearchFoodRestaurant> createState() => _SearchFoodRestaurantState();
}

class _SearchFoodRestaurantState extends State<SearchFoodRestaurant> {
  final TextEditingController _searchController = TextEditingController();

  int? buttonIndex = 0;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: CustomAppBar(
        title: 'Search',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 45,
              // Add padding around the search bar
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.cancel_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 0, right: 0, top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      width: 156,
                      title: 'Restaurant',
                      onPressed: () {
                        setState(() {
                          print('switched to: $buttonIndex');
                          if (buttonIndex == 1) {
                            buttonIndex = 0;
                            print('switched to: $buttonIndex');
                          } else {
                            // buttonIndex = 1;
                          }
                        });
                      },
                      buttonColor: buttonIndex == 0
                          ? AppColors.redColor
                          : AppColors.awashColor.withOpacity(0.6)),
                  CustomButton(
                      width: 156,
                      title: 'Food',
                      onPressed: () {
                        setState(() {
                          print('switched to: $buttonIndex');
                          if (buttonIndex == 0) {
                            buttonIndex = 1;
                            print('switched to: $buttonIndex');
                          } else {
                            //buttonIndex = 0;
                          }
                        });
                      },
                      buttonColor: buttonIndex == 1
                          ? AppColors.redColor
                          : AppColors.awashColor.withOpacity(0.6)),
                ],
              ),
            ),

            Flexible(
              child: buttonIndex == 1
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 2.4 / 3,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: categoryList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return FoodProductWidget(
                          foodData: categoryList[index],
                        );
                      })
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 400,
                              childAspectRatio: 5.8 / 3,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: categoryList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return RestaurantWidget(
                          foodData: categoryList[index],
                        );
                      }),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
