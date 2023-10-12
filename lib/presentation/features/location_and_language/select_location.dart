import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/dashboard/view/dashboard.dart';

import 'model/static_models.dart';
import 'utils/app_imges.dart';
import 'utils/colors.dart';
import 'widgets/buttons.dart';
import 'widgets/containers.dart';
import 'widgets/text_fields.dart';
import 'widgets/texts.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({super.key});

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(AppImages.grandizarLogo),
                SizedBox(height: 30.h),
                !search
                    ? Column(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: locations.length,
                              itemBuilder: (context, index) {
                                return LocationContainer(
                                    locationName:
                                        locations[index].locationName);
                              }),
                          Row(
                            children: [
                              Container(
                                  height: 1,
                                  width: 156.w,
                                  color: AppColors.disableColor),
                              const CustomText(title: 'Or', fontSize: 13),
                              Container(
                                  height: 1,
                                  width: 156.w,
                                  color: AppColors.disableColor),
                            ],
                          ),
                        ],
                      )
                    : SizedBox(),
                CustomBoxField(
                    hintText: 'Search by city or city center name',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            search = true;
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up))),
                SizedBox(height: 20.h),
                !search
                    ? CustomButton(
                        title: 'Select',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        },
                        buttonColor: AppColors.redColor,
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
