
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/category_food/view/category_food_list_screen.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_app_bar.dart';

import '../../common/custom_widgets.dart';
import '../model/category_model.dart';
class AllCategoryScreen extends StatefulWidget{
  @override
  State<AllCategoryScreen> createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<AllCategoryScreen> {

  List <CategoryModel> categoryList = [];

  @override
  void initState() {
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
    categoryList.add(CategoryModel(categoryName: 'Pizza'));
    categoryList.add(CategoryModel(categoryName: 'Burger'));
    categoryList.add(CategoryModel(categoryName: 'Showerma'));
    categoryList.add(CategoryModel(categoryName: 'Chiken wings'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'All Categories',
      actions: [
        CustomWidget.cartWidget(10),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 170,
                childAspectRatio: 2.8 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: categoryList.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CategoryDetailScreen(categoryModel: categoryList[index])));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        width: width/2.6,
                        height:width/2.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(categoryList[index].categoryName!,
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              );
            }),
      ),
    );

  }
}



