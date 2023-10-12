import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/category/model/category_model.dart';

import '../../common/food_product_widget.dart';

class TrendingMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2.4 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 6,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          return FoodProductWidget(
            foodData: CategoryModel(categoryName: 'Bristo Pizza'),
          );
        });
  }
}
