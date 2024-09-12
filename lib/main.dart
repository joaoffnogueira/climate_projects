import 'package:climate_change_projects/helpers/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/form/presentation/screens/form_screen.dart';
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
      title: 'Refletir ações pelo clima',
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
      home: const MyHomePage(title: 'Refletir ações pelo clima'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyApp.themeHelper.backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.book),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Stack(
          children: [
            BackgroundWidget(
                image: MyApp.themeHelper.image,
                credit: MyApp.themeHelper.credit),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => const FormScreen(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text('Nova reflexão'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
