/*
	 * Created by Rezaul Karim
	 * Created on Fri Sep 29 2023
	 *
	 * Updated by 
	 * Updated on 
	 *
	 * Reviewed by 
	 * Reviewed on 
	 *
	 * Screen Name: custom_text_field.dart
	 * Description: 
	 *
	 * Copyright (c) 2023 Grandizar
 */

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/utils/colors.dart';
import 'package:grandizar_customer_v2/presentation/features/location_and_language/widgets/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
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
      required this.maxLines,
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
  final int maxLines;
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
              style: TextStyle(fontSize: 15, color: Color(0xFF272727)),
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
              color: Theme.of(context).cardColor,
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
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(style: BorderStyle.none, width: 0),
                      ),
                      isDense: true,
                      hintText: hintText,
                      fillColor: Theme.of(context).cardColor,
                      hintStyle: TextStyle(
                          fontSize: 15, color: Theme.of(context).hintColor),
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

class CustomTextField2 extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController txtController;
  final String hintText;
  final IconData? prefixIcon;
  final String title;
  final Widget? suffixWidget;
  final bool? obscureText;
  const CustomTextField2(
      {super.key,
      required this.txtController,
      required this.hintText,
      this.prefixIcon,
      required this.title,
      this.isCountryPicker,
      this.suffixWidget,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == '' ? const SizedBox() : Text(title, style: subTitleStyle),
        SizedBox(height: 10.h),
        TextFormField(
          controller: txtController,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            prefixIcon: isCountryPicker ?? false
                ? CountryCodePicker(
                    onChanged: (CountryCode countryCode) {
                      print("New Country selected: $countryCode");
                    },
                    initialSelection: 'SA',
                    favorite: const ['+966', 'SA'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  )
                : prefixIcon == null
                    ? null
                    : Icon(
                        prefixIcon,
                      ),
            suffixIcon: suffixWidget,
            hintText: hintText,
            hintStyle: titleStyle.copyWith(fontSize: 15),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: AppColors.fadeBlue,
            filled: true,
          ),
        ),
      ],
    );
  }
}
