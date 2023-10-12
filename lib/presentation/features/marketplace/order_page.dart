import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/Marketplace/rating_page.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/model/static_models.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/buttons.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/texts.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.h,
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CircleAvatar(
              backgroundColor: AppColors.awashColor,
              radius: 25.r,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: AppColors.redColor)),
            ),
          ),
          title: CustomText(
              title: 'My Orders',
              fontSize: 18.spMax,
              fontWeight: FontWeight.bold),
          bottom: TabBar(
            indicatorColor: AppColors.redColor,
            labelColor: AppColors.redColor,
            unselectedLabelColor: AppColors.disableColor,
            tabs: const [
              Tab(text: 'Pending'),
              Tab(text: 'History'),
            ],
            labelStyle:
                TextStyle(fontSize: 14.spMax, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 14.spMax),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            title: orders[index].itemType, fontSize: 14.sp),
                        const Divider(color: AppColors.disableColor),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              children: [
                                CircleAvatar(
                                  radius: 30.r,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage(orders[index].merchantImg),
                                ),
                                SizedBox(width: 5.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        title: orders[index].merchantName,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          CustomText(
                                              title: '\$${orders[index].price}',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                          const VerticalDivider(thickness: 2),
                                          CustomText(
                                              title:
                                                  '${orders[index].quantity} Items',
                                              fontSize: 12.sp,
                                              txtColor: AppColors.disableColor),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            CustomText(
                                title: '#${orders[index].orderId}',
                                fontSize: 14.sp,
                                txtColor: AppColors.disableColor,
                                textDecoration: TextDecoration.underline)
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButtonMedium(
                                title: 'Track Order', onPressed: () {}),
                            CustomButtonMedium(
                                title: 'Cancel',
                                onPressed: () {},
                                buttonColor: AppColors.awashColor),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
            ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                title: orders[index].itemType, fontSize: 14.sp),
                            CustomText(
                                title: orders[index].status,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                txtColor: orders[index].status == 'Completed'
                                    ? AppColors.greenColor
                                    : AppColors.redColor),
                          ],
                        ),
                        const Divider(color: AppColors.disableColor),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage(orders[index].merchantImg),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                          title: orders[index].merchantName,
                                          fontSize: 14.sp,
                                          padding: 4,
                                          fontWeight: FontWeight.bold),
                                      CustomText(
                                          title: '#${orders[index].orderId}',
                                          fontSize: 14.sp,
                                          txtColor: AppColors.disableColor,
                                          textDecoration:
                                              TextDecoration.underline)
                                    ],
                                  ),
                                  width: 280.w,
                                ),
                                SizedBox(height: 8.h),
                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      CustomText(
                                          title: '\$${orders[index].price}',
                                          fontSize: 14.sp,
                                          padding: 4,
                                          fontWeight: FontWeight.bold),
                                      const VerticalDivider(thickness: 2),
                                      CustomText(
                                          title: orders[index].time,
                                          fontSize: 12.sp,
                                          padding: 4),
                                      CircleAvatar(
                                        radius: 2.r,
                                        backgroundColor: AppColors.disableColor,
                                      ),
                                      CustomText(
                                          title:
                                              '${orders[index].quantity} Items',
                                          fontSize: 12.sp,
                                          padding: 4,
                                          txtColor: AppColors.disableColor),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButtonMedium(
                                title: 'Rate',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RatingsPage(index: index)));
                                },
                                buttonColor: AppColors.awashColor),
                            CustomButtonMedium(
                                title: 'Re-Order', onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
