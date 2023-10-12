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
	 * Screen Name: contact_button.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart'
    as color;

class CallButton extends StatelessWidget {
  final VoidCallback onTap;
  const CallButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: color.themeColor,
          borderRadius: BorderRadius.circular(22.5),
          boxShadow: [
            BoxShadow(
              color: color.themeColor.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 4,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Icon(
            Icons.phone,
            color: color.white,
          ),
        ),
      ),
    );
  }
}

class MessageButton extends StatelessWidget {
  final VoidCallback onTap;
  const MessageButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.5),
          border: Border.all(color: color.themeColor, width: 2),
        ),
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.facebookMessenger,
            color: color.themeColor,
          ),
        ),
      ),
    );
  }
}

class PhoneButton extends StatelessWidget {
  final VoidCallback onTap;
  const PhoneButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: color.themeColor,
      radius: 40,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: color.themeColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Icon(
            Icons.phone,
            color: color.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class MicButton extends StatelessWidget {
  final IconData ico;
  final VoidCallback? onTap;
  const MicButton({super.key, required this.ico, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: color.btnbg,
      radius: 36,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: color.btnbg,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Icon(
            ico,
            color: color.iconc,
            // size: 30,
          ),
        ),
      ),
    );
  }
}

class SoundButton extends StatelessWidget {
  final IconData ico;
  final VoidCallback onTap;
  const SoundButton({super.key, required this.ico, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: color.btnbg.withOpacity(0.5),
      radius: 36,
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: color.btnbg,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Icon(
            ico,
            color: color.iconc,
            // size: 30,
          ),
        ),
      ),
    );
  }
}
