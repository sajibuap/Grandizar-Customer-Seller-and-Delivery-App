import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/language/language_provider.dart';
import 'splash_language_selection_view.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
        if (context.mounted) {
          await ref.read(localeProvider.notifier).swapLocale();
        }
      });
      Future.delayed(
        const Duration(seconds: 5),
        () {
          timer.cancel();
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const SplashLanguageSelectionView(),
          ));
        },
      );
      return null;
    }, const []); // This is a hack to make useEffect run only once
    final words = Words.of(context)!;
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
                height: 200,
                width: 200,
                child: Image.asset(
                  PngConstants.grandizarLogo,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width - 80,
            child: DottedBorder(
              strokeWidth: 2,
              color: const Color(0xFFEB1933),
              borderType: BorderType.RRect,
              radius: const Radius.circular(4),
              child: Center(
                child: Text(
                  words.welcome_to_app,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEB1933)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              words.app_title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF999192)),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              words.app_subtitle,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF858478)),
            ),
          ),
        ],
      ),
    );
  }
}
