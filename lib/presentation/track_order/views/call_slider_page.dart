/*
	 * Created by Rezaul Karim
	 * Created on Thu Oct 05 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: call_slider_page.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/track_order/widgets/contact_button.dart';

import '../../common/custom_widgets.dart';

class CallSliderPage extends StatefulWidget {
  final Function onTap;
  const CallSliderPage({super.key, required this.onTap});

  @override
  State<CallSliderPage> createState() => _CallSliderPageState();
}

class _CallSliderPageState extends State<CallSliderPage> {
  bool micPress =  false, volPress = false;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CW.gap(5),
        CustomWidget.svgAsset('top', 7, 70),
        CW.gap(15),
        ClipOval(
          child: CustomWidget.pngAsset('rider', 103, 103),
        ),
        CW.gap(5),
        Text(
          'Hamid Abdulla',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Connecting',
                style: TextStyle(fontSize: 16, color: Color(0xFF979797))),
            AnimatedTextKit(
              totalRepeatCount: 10, // Number of times to repeat the animation
              animatedTexts: [
                TypewriterAnimatedText(
                  '.......',
                  cursor: '',
                  textStyle: TextStyle(fontSize: 16, color: Color(0xFF979797)),
                  speed: Duration(milliseconds: 100), // Typing speed
                ),
              ],
            ),
          ],
        ),
        CW.gap(15),
        Container(
          height: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MicButton(
                ico: micPress ? Icons.mic : Icons.mic_off,
                onTap: () {
                  setState(() {
                    micPress = !micPress;
                  });
                },
              ),
              CW.hGap(10),
              Column(
                children: [
                  CW.gap(25),
                  PhoneButton(
                    onTap: () {
                      widget.onTap();
                    },
                  ),
                ],
              ),
              CW.hGap(10),
              SoundButton(
                ico: volPress ? Icons.volume_up : Icons.volume_off,
                onTap: () {
                  setState(() {
                    volPress = !volPress;
                  });
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
