import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandizar_customer_v2/presentation/category/view/all_category_screen.dart';
import 'package:grandizar_customer_v2/presentation/constants/svg_constants.dart';
import 'package:grandizar_customer_v2/presentation/home/widgets/home_all_category.dart';
import 'package:grandizar_customer_v2/presentation/home/widgets/restaurant_near_you.dart';
import 'package:grandizar_customer_v2/presentation/home/widgets/trending_meals.dart';
import 'package:grandizar_customer_v2/presentation/popular_restaurant/view/popular_restaurant_screen.dart';
import 'package:grandizar_customer_v2/presentation/profile/view/drawer_menu.dart';
import 'package:grandizar_customer_v2/presentation/search/view/search_food_restaurant.dart';

import '../category/model/category_model.dart';
import '../common/custom_widgets.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_banner.dart';
import 'widgets/popular_restaurent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categoryList = [];
  final TextEditingController _searchController = TextEditingController();

  TextStyle headerTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  final List<String> items = [
    'AL-OLAYA, RIYADH',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

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

    selectedValue = items[0];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: HomeAppBar(
          title: 'Home',
          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFEB1933),
                        fontWeight: FontWeight.bold),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item.toUpperCase(),
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFEB1933),
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 20,
                    width: 180,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
              Text(
                '    Selected Hub or City',
                style: TextStyle(fontSize: 14, color: Color(0xFF979797)),
              )
            ],
          ),
          back: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DrawerMenu();
                }));
              },
              icon: SvgPicture.asset(SvgConstants.menu)),
          actions: [
            CustomWidget.cartWidget(10),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              // Add padding around the search bar
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                controller: _searchController,
                style: TextStyle(height: 1.0),
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchFoodRestaurant(),
                      ));
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  //banner
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deals of the Day',
                        style: headerTextStyle,
                      ),
                      Row(
                        children: [
                          Text('See All'),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                  // Flexible(child:
                  Container(height: 150, child: HomeBanner()),
                  //),
                  //category
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Category',
                        style: headerTextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllCategoryScreen()));
                        },
                        child: Row(
                          children: [
                            Text('See All'),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Flexible(child:
                  Container(
                    height: 150,
                    child: HomeAllCategory(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Restaurant',
                        style: headerTextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PopularRestaurantScreen(),
                          ));
                        },
                        child: Row(
                          children: [
                            Text('See All'),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 150,
                    child: PopularRestaurent(),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  DottedBorder(
                    borderType: BorderType.RRect,
                    dashPattern: [9, 2],
                    strokeWidth: 2,
                    strokeCap: StrokeCap.butt,
                    radius: Radius.circular(12),
                    color: Color(0xFFC6A943),
                    padding: EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        height: 170,
                        color: Color(0xFFFBF9F0),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              width: width / 2 - 40,
                              height: 168,
                              child: Column(
                                children: [
                                  Text(
                                    'How was your last order?',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFC6A943),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      minimumSize: const Size.fromHeight(50),
                                    ),
                                    child: Text(
                                      'Share Now',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: CustomWidget.pngAsset(
                                  'grandizar_logo', 123, 134),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Restaurant near you
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Restaurant near you',
                        style: headerTextStyle,
                      ),
                      // Row(
                      //   children: [
                      //     Text('See All'),
                      //     Icon(Icons.arrow_forward_ios_sharp,size: 15,)
                      //   ],
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Flexible(child:
                  RestaurantNearYou(),
                  //),

                  //Trending meals
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending meals',
                        style: headerTextStyle,
                      ),
                      // Row(
                      //   children: [
                      //     Text('See All'),
                      //     Icon(Icons.arrow_forward_ios_sharp,size: 15,)
                      //   ],
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Flexible(
                  //child:
                  SizedBox(height: 600, child: TrendingMeals())
                  //),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
