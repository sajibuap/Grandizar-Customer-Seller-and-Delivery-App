import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/login_screen.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/spalsh_screen.dart';
import 'package:grandizar_customer_v2/presentation/wallet/views/wallet_screen.dart';
import 'package:grandizar_customer_v2/application/language/language_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

// update this file
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  await Hive.initFlutter();
  await Hive.openBox('language');

  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatefulHookConsumerWidget {
  @override
  ConsumerState<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) {
        return MaterialApp(
          title: 'GrandizarCustomerV2',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            Words.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: ref.watch(localeProvider),
          supportedLocales: ref.read(languageRepoProvider).supportedLocales(),
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFFEB1933)),
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          ),
          routes: {
            '/wallet': (BuildContext context) => const WalletScreen(),
          },
          home: LoginScreen(),
        );
      },
    );
  }
}
