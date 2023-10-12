/*
	 * Created by Rezaul Karim
	 * Created on Wed Oct 04 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: track_order_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grandizar_customer_v2/presentation/common/custom_widgets.dart';
import 'package:grandizar_customer_v2/presentation/track_order/views/call_slider_page.dart';
import 'package:grandizar_customer_v2/presentation/track_order/views/tracker_slider_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../shared/controller/location_controller.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();
  LatLng initialPosition = LatLng(37.42796133580664, -122.085749655962);
  CameraPosition cameraPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.46);

  LocationController lc = LocationController();
  PanelController panelController = PanelController();

  bool callPress = false;

  List<String> trackTitle = [
    'Your order has been received',
    'The restaurant is preparing your food',
    'Your order has been picked up for delivery',
    'Order arriving soon!'
  ];

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
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: CustomWidget.defaultBackButton(context),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationEnabled: true,
            initialCameraPosition: cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              mapController.complete(controller);
            },
          ),
          Visibility(
            visible: !callPress,
            child: SlidingUpPanel(
              minHeight: 162,
              maxHeight: 620,
              controller: panelController,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              panel: TrackerSliderPage(trackTitle: trackTitle, onCallTap: callBtnTap,),
            ),
          ),
          Visibility(
            visible: callPress,
            child: SlidingUpPanel(
              minHeight: 380,
              maxHeight: 380,
              controller: panelController,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              panel: CallSliderPage(onTap: dismissCall,)
            ),
          )
        ],
      ),
    );
  }

  void callBtnTap(){
    setState(() {
      callPress = !callPress;
    });
  }
  void dismissCall(){
    setState(() {
      callPress = !callPress;
    });
  }
}
