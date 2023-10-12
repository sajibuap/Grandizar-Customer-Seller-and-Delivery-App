import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/app_imges.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/text_style.dart';

class AppHeading extends StatelessWidget {
  final String title;
  const AppHeading({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.grandizarLogo),
        SizedBox(height: 20.h),
        Text(title,
            style: titleStyle.copyWith(
              fontSize: 25,
            )),
      ],
    );
  }
}
