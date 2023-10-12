import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';

import '../../category/model/category_model.dart';
import '../../common/custom_widgets.dart';
import '../../common/food_product_widget.dart';

class CategoryDetailScreen extends StatefulWidget {
  final CategoryModel categoryModel;

  const CategoryDetailScreen({super.key, required this.categoryModel});
  @override
  State<CategoryDetailScreen> createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<CategoryDetailScreen> {
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
        title: widget.categoryModel.categoryName!,
        actions: [
          CustomWidget.cartWidget(10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2.4 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: categoryList.length,
            itemBuilder: (BuildContext ctx, index) {
              return FoodProductWidget(
                foodData: categoryList[index],
              );
            }),
      ),
    );
  }
}
