import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/application/language/language_provider.dart';
import 'package:grandizar_customer_v2/presentation/common/red_elevated_button_large.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'splash_app_categories_view.dart';

class SplashLanguageSelectionView extends ConsumerWidget {
  const SplashLanguageSelectionView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(
                  PngConstants.grandizarLogo,
                ),
              ),
            ),
          ),
          const Spacer(),
          RedElevatedButtonLarge(
              text: 'العربية',
              onTap: () async {
                await ref.read(localeProvider.notifier).changeLocale('ar');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashAppCategoriesView(),
                ));
              }),
          const SizedBox(height: 20),
          RedElevatedButtonLarge(
              text: 'English',
              onTap: () async {
                await ref.read(localeProvider.notifier).changeLocale('en');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashAppCategoriesView(),
                ));
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
