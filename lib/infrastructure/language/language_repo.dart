import 'dart:ui';

import 'package:grandizar_customer_v2/domain/language/i_language_repo.dart';
import 'package:hive/hive.dart';

class LanguageRepo extends ILanguageRepo {
  final box = Hive.box('language');
  @override
  Locale? defaultLocale() {
    final locale = box.get('locale');
    if (locale == null) {
      return null;
    }
    return Locale(locale);
  }

  @override
  Future<void> setDefaultLocale(String locale) async {
    await box.put('locale', locale);
  }

// only english and arabic
  @override
  List<Locale> supportedLocales() => [
        Locale('en'),
        Locale('ar'),
      ];
}
