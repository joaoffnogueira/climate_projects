import 'dart:ui' as ui;
import 'package:climate_change_projects/features/form/presentation/screens/form_screen.dart';
import 'package:climate_change_projects/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:climate_change_projects/helpers/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FormScreen shows progress and next button', (tester) async {
    tester.view.physicalSize = const ui.Size(1080, 1920);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.devicePixelRatio = 1.0;
    });
    ThemeHelper().randomTheme();
    await tester.pumpWidget(MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      home: const FormScreen(),
    ));

    expect(find.text('EmergeClima'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.text('Próxima pergunta'), findsOneWidget);
  }, skip: true);
}
