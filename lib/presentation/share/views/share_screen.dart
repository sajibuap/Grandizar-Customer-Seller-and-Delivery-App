/*
	 * Created by Rezaul Karim
	 * Created on Thu Sep 28 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Updated on 
	 *
	 * Screen Name: share_screen.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';

import '../../common/custom_app_bar.dart';
import '../../common/custom_red_button_widget.dart';
import '../../common/custom_text_field.dart';
import '../../constants/png_constants.dart';
import '../widgets/share_button_widget.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  TextEditingController referalLink = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Share'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              height: 171,
              width: 181,
              child: Image.asset(
                PngConstants.grandizarLogo,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShareButton(
                        buttonTitle: 'facebook',
                        onTap: () => onShareButtonTap(1)),
                    ShareButton(
                      buttonTitle: 'insta',
                      onTap: () => onShareButtonTap(2),
                    ),
                    ShareButton(
                        buttonTitle: 'tweeter',
                        onTap: () => onShareButtonTap(3)),
                    ShareButton(
                        buttonTitle: 'linkedin',
                        onTap: () => onShareButtonTap(4))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShareButton(
                        buttonTitle: 'messanger',
                        onTap: () => onShareButtonTap(5)),
                    ShareButton(
                        buttonTitle: 'whatsapp',
                        onTap: () => onShareButtonTap(6)),
                    ShareButton(
                        buttonTitle: 'snapchat',
                        onTap: () => onShareButtonTap(7)),
                    ShareButton(
                        buttonTitle: 'tiktok', onTap: () => onShareButtonTap(8))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: CustomTextField(
                    controller: referalLink,
                    hintText: 'www.grandizar.com/sdf656sdfb',
                    maxLines: 1,
                    trailing: CustomRedButton(text: 'copy', onTap: () {
                      debugPrint('Muri kha');
                    },),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  onShareButtonTap(int index) {
    debugPrint('$index');
  }
}
