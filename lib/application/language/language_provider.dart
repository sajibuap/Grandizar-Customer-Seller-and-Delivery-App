import 'dart:ui';
import 'package:grandizar_customer_v2/domain/language/i_language_repo.dart';
import 'package:grandizar_customer_v2/infrastructure/language/language_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef Words = AppLocalizations;

final languageRepoProvider = Provider<ILanguageRepo>((ref) {
  return LanguageRepo();
});

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale?>((ref) {
  final languageRepo = ref.watch(languageRepoProvider);
  return LocaleNotifier(languageRepo);
});

class LocaleNotifier extends StateNotifier<Locale?> {
  final ILanguageRepo languageRepo;
  LocaleNotifier(this.languageRepo) : super(languageRepo.defaultLocale());

  Future<void> changeLocale(String locale) async {
    await languageRepo.setDefaultLocale(locale);
    state = Locale(locale);
  }

  Future<void> swapLocale() async {
    final currentLocale = state?.languageCode;
    if (currentLocale == 'ar') {
      await changeLocale('en');
    } else {
      await changeLocale('ar');
    }
  }
}
