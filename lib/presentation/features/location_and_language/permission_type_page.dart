// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:geolocator/geolocator.dart';
//
// import 'utils/app_imges.dart';
// import 'utils/colors.dart';
// import 'widgets/texts.dart';
//
// class PermissionType extends StatelessWidget {
//   const PermissionType({super.key});
//
//   Future<void> _requestLocationPermission(BuildContext context, String type) async {
//
//     if (type == 'WHILE USING THE APP') {
//       await Geolocator.requestPermission();
//     }
//     if (type == 'Always') {
//       await Geolocator.requestPermission();
//     }
//     if (type == 'DON’T ALLOW') {
//       await Geolocator.openLocationSettings();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.whiteColor,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(AppImages.locationLogo),
//             CustomText(
//                 title: 'Allow GRANDIZAR to access\nyour location?',
//                 fontSize: 20.sp),
//             SizedBox(height: 20.h),
//             Divider(indent: 30.w, endIndent: 30.w),
//             InkWell(
//               onTap: () {
//                 _requestLocationPermission(context, 'WHILE USING THE APP');
//               },
//               child: CustomText(
//                   title: 'WHILE USING THE APP',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   txtColor: AppColors.greenColor),
//             ),
//             Divider(indent: 30.w, endIndent: 30.w),
//             InkWell(
//               onTap: () {
//                 _requestLocationPermission(context, 'Always');
//               },
//               child: CustomText(
//                   title: 'Always',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   txtColor: AppColors.greenColor),
//             ),
//             Divider(indent: 30.w, endIndent: 30.w),
//             InkWell(
//               onTap: () {
//                 _requestLocationPermission(context, 'DON’T ALLOW');
//               },
//               child: CustomText(
//                   title: 'DON’T ALLOW',
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   txtColor: AppColors.greenColor),
//             ),
//             Divider(indent: 30.w, endIndent: 30.w)
//           ],
//         ),
//       ),
//     );
//   }
// }
