import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_imges.dart';
import '../utils/colors.dart';
import 'texts.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key, required this.locationName});

  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 56.h,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: AppColors.awashColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 18.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.saudiFlag), fit: BoxFit.fill
                )
            ),
          ),
          CustomText(title: locationName, fontSize: 14.spMax),
        ],
      ),
    );
  }
}
