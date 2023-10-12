import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/category/model/category_model.dart';
import 'package:grandizar_customer_v2/presentation/category_food/view/category_food_list_screen.dart';

class HomeAllCategory extends StatelessWidget {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CategoryDetailScreen(
                              categoryModel: CategoryModel(
                                  categoryName: 'Burger',
                                  imageUrl:
                                      'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // Container(
                      //   height:width/2.6,
                      //   alignment: Alignment.center,
                      //   decoration: BoxDecoration(
                      //       color: Colors.amber,
                      //       borderRadius: BorderRadius.circular(15)),
                      //   //child: Text(categoryList![index].categoryName!),
                      // ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
