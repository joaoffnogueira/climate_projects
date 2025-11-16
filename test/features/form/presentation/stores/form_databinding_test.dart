import 'package:climate_change_projects/features/form/presentation/state/form_databinding.dart';
import 'package:climate_change_projects/features/form/data/models/tense_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/core/di/service_locator.dart';
import 'package:climate_change_projects/l10n/app_localizations.dart';
import 'package:climate_change_projects/main.dart';

Widget _localizedApp(Widget child) {
  return MaterialApp(
    navigatorKey: NavigationKeys.navigatorKey,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.supportedLocales,
    locale: AppLocalizations.supportedLocales.first,
    home: Scaffold(body: child),
  );
}

void main() {
  setUpAll(() async {
    await ServiceLocator.initTest();
  });
  testWidgets('FormDatabinding builds default form and recommended keywords',
      (tester) async {
    await tester.pumpWidget(_localizedApp(const SizedBox.shrink()));
    final binding = FormDatabinding(TenseEnum.future);
    expect(binding.defaultForm.isNotEmpty, true);
    expect(binding.recomendedKeywords.isNotEmpty, true);
  });

  testWidgets('changeTense switches questionTense and default form',
      (tester) async {
    await tester.pumpWidget(_localizedApp(const SizedBox.shrink()));
    final binding = FormDatabinding(TenseEnum.future);
    final originalFirstQuestion = binding.defaultForm.values.first.question;
    binding.changeTense([2]); // present
    expect(binding.questionTense, TenseEnum.present);
    expect(binding.defaultForm.values.first.question, originalFirstQuestion);
    binding.changeTense([3]); // past
    expect(binding.questionTense, TenseEnum.past);
  });
}
