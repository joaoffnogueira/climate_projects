import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/home/presentation/home_screen.dart';
import 'firebase_options.dart';
import 'helpers/theme_helper.dart';
import 'l10n/app_localizations.dart';
import 'core/di/service_locator.dart';
import 'core/services/crashlytics_service.dart';
import 'core/services/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = (errorDetails) {
    getIt<CrashlyticsService>().recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    getIt<CrashlyticsService>().recordError(error, stack, fatal: true);
    return true;
  };
  MyApp.themeHelper.randomTheme();
  runApp(const MyApp());
}

class NavigationKeys {
  static GlobalKey<NavigatorState> get navigatorKey =>
      getIt<NavigationService>().navigatorKey;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static ThemeHelper get themeHelper =>
      getIt.isRegistered<ThemeHelper>() ? getIt<ThemeHelper>() : ThemeHelper();
  @override
  Widget build(BuildContext context) {
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
