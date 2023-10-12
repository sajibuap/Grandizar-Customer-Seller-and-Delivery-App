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
	 * Screen Name: address_text_field.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grandizar_customer_v2/presentation/constants/color_constants.dart' as color;

class AddressTextField extends StatelessWidget {
  const AddressTextField(
      {super.key,
      this.leading,
      this.trailing,
      this.isPassword,
      required this.controller,
      required this.hintText,
      this.focusNode,
      this.nextFocus,
      this.elevation = 2.0,
      this.inputType,
      this.inputAction,
      this.onChanged,
      this.onSubmit,
      this.maxLines,
      this.capitalization,
      this.textAlign,
      this.isNumber,
      this.obscureText,
      this.title,
      this.width});

  final Widget? leading;
  final Widget? trailing;
  final bool? isPassword;
  final double elevation;
  final TextEditingController controller;
  final String hintText;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final bool? obscureText;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final ValueChanged<String>? onChanged;
  final Function? onSubmit;
  final int? maxLines;
  final TextCapitalization? capitalization;
  final TextAlign? textAlign;
  final bool? isNumber;
  final String? title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: title != null,
          child: SizedBox(
            height: 28.0,
            child: Text(
              title ?? '',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF272727)),
            ),
          ),
        ),
        Material(
          elevation: elevation,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          clipBehavior: Clip.hardEdge,
          child: Container(
            height: 56,
            width: width ?? wid,
            decoration: BoxDecoration(
              color: color.addressText,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: leading ?? const SizedBox.shrink(),
                ),
                Expanded(
                  child: TextField(
                    maxLines: maxLines,
                    controller: controller,
                    focusNode: focusNode,
                    textAlign: textAlign ?? TextAlign.start,
                    enabled: true,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    textInputAction:
                        nextFocus == null ? TextInputAction.done : inputAction,
                    keyboardType:
                        isNumber != null ? TextInputType.number : inputType,
                    cursorColor: Theme.of(context).primaryColor,
                    textCapitalization:
                        capitalization ?? TextCapitalization.none,
                    autofocus: false,
                    obscureText: (isPassword != null && isPassword!)
                        ? (obscureText != null && obscureText!)
                            ? true
                            : false
                        : false,
                    inputFormatters: isNumber != null
                        ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]
                        : null,
                    decoration: InputDecoration(
        
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(style: BorderStyle.none, width: 0),
                      ),
                      isDense: true,
                      hintText: hintText,
                      fillColor: color.addressText,
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor),
                      filled: true,
                    ),
                    onSubmitted: (text) => nextFocus != null
                        ? FocusScope.of(context).requestFocus(nextFocus)
                        : onSubmit != null
                            ? onSubmit!(text)
                            : null,
                    onChanged: onChanged,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: trailing ?? const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
