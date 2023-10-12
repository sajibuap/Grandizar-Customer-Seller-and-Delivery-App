/*
	 * Created by Rezaul Karim
	 * Created on Tue Oct 03 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: address_add_edit.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grandizar_customer_v2/presentation/common/address_text_field.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';

import '../../common/address_label_buttons.dart';
import '../../common/custom_widgets.dart';
import '../controller/location_controller.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class CustomerAddressAddEdit extends StatefulWidget {
  const CustomerAddressAddEdit({super.key});

  @override
  State<CustomerAddressAddEdit> createState() => _CustomerAddressAddEditState();
}

class _CustomerAddressAddEditState extends State<CustomerAddressAddEdit> {
  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();
  LatLng initialPosition = LatLng(37.42796133580664, -122.085749655962);
  CameraPosition cameraPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.46);

  int pressed = 1;

  LocationController lc = LocationController();

  TextEditingController addressTxt = TextEditingController();
  TextEditingController streetTxt = TextEditingController();
  TextEditingController postCodeTxt = TextEditingController();
  TextEditingController apartmentTxt = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadLocationPermit();
  }

  void loadLocationPermit() async {
    Position pos = await lc.getCurrentPosition();
    initialPosition = LatLng(pos.latitude, pos.longitude);
    cameraPosition = CameraPosition(target: initialPosition, zoom: 14.46);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: defaultBackButton(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: 300,
              child: Stack(
                children: [
                  GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: cameraPosition,
                    onMapCreated: (GoogleMapController controller) {
                      mapController.complete(controller);
                    },
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomWidget.svgAsset('mapdot', 20, 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  AddressTextField(
                    leading: Icon(
                      Icons.location_on,
                      color: Color(0xFF6B6E82),
                    ),
                    controller: addressTxt,
                    hintText: '3235 Royal Ln. mesa, new jersy 34567',
                    title: 'Address',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      AddressTextField(
                        controller: streetTxt,
                        hintText: 'hason nagar',
                        title: 'Street',
                        width: width / 2 - 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AddressTextField(
                        controller: postCodeTxt,
                        hintText: '34567',
                        title: 'Post Code',
                        width: width / 2 - 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AddressTextField(
                    controller: apartmentTxt,
                    hintText: '345',
                    title: 'Appartment',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 28.0,
                    child: Text(
                      'Label As',
                      style: TextStyle(fontSize: 15, color: Color(0xFF272727)),
                    ),
                  ),
                  Row(
                    children: [
                      LabelElevatedButton(
                        text: 'Home',
                        backColor:
                            pressed == 1 ? color.themeColor : color.addressText,
                        textColor: pressed == 1 ? Colors.white : color.bgColor1,
                        onTap: () {
                          pressed = 1;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      LabelElevatedButton(
                        text: 'Work',
                        backColor:
                            pressed == 2 ? color.themeColor : color.addressText,
                        textColor: pressed == 2 ? Colors.white : color.bgColor1,
                        onTap: () {
                          pressed = 2;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      LabelElevatedButton(
                        text: 'Other',
                        backColor:
                            pressed == 3 ? color.themeColor : color.addressText,
                        textColor: pressed == 3 ? Colors.white : color.bgColor1,
                        onTap: () {
                          pressed = 3;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 100,),
                  RedElevatedButtonLarge(text: 'Save Location', onTap: saveLocation),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void saveLocation(){

  }

  defaultBackButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      focusColor: Colors.transparent,
      icon: CustomWidget.svgAsset('back', 45, 45),
    );
  }
}
