import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/application/language/language_provider.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/hubs_page.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/location_provider.dart';
import 'package:location/location.dart';

import 'select_location.dart';
import 'utils/app_imges.dart';
import 'utils/colors.dart';
import 'widgets/buttons.dart';
import 'widgets/texts.dart';

class LocationAccessPage extends ConsumerWidget {
  LocationAccessPage({super.key});

  LocationData? locationData;

  Future requestPermission() async {
    Location location = Location();
    bool locationService;
    PermissionStatus permissionStatus;

    locationService = await location.serviceEnabled();
    if (!locationService) {
      locationService = await location.requestService();
      if (!locationService) {
        return;
      }
    }

    permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        return;
      }
    }

    return await location.getLocation();
  }

  @override
  Widget build(BuildContext context, ref) {
    final words = Words.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.navigationLogo),
            CustomText(title: "Enable Your Location", fontSize: 18.sp),
            CustomText(
                title:
                    'To search for the best nearby driver, we\nwant to know your current location',
                fontSize: 16.sp,
                txtColor: AppColors.disableColor),
            SizedBox(height: 100.h),
            CustomButton(
                title: 'Allow Location Access',
                onPressed: () async {
                  locationData = await requestPermission();
                  print(locationData!.latitude);
                  print(locationData!.longitude);

                  final response = await ref
                      .read(getNearestHubsProvider)
                      .getNearestHubs(
                          lat: locationData!.latitude,
                          long: locationData!.longitude);

                  final nearestHubs = response['result']['nearestHubs'];

                  print("nearestHubs length: ${nearestHubs.length}");
                  for (final hub in nearestHubs) {
                    print("Hub name: ${hub['name']}");
                  }

                  //print('My Hubs: ${response['result']['nearestHubs']}');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HubsPage(nearestHubs: nearestHubs),
                    ),
                  );
                }),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectLocationPage()));
              },
              child: CustomText(
                  title: 'Enter location manually',
                  fontSize: 16.sp,
                  textDecoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
