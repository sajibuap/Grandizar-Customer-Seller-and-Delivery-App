import 'package:flutter/material.dart';

abstract class ILanguageRepo {
  List<Locale> supportedLocales();
  Locale? defaultLocale();
  Future<void> setDefaultLocale(String language);
}
