import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/home/presentation/home_screen.dart';
import 'helpers/theme_helper.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class NavigationKeys {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final themeHelper = ThemeHelper();
  @override
  Widget build(BuildContext context) {
    themeHelper.randomTheme();
    return MaterialApp(
      title: 'EmergeClima',
      navigatorKey: NavigationKeys.navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: themeHelper.primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'EmergeClima'),
    );
  }
}
