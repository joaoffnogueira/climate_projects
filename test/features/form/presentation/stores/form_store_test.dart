import 'dart:ui' as ui;

import 'package:climate_change_projects/features/form/presentation/state/form_viewmodel.dart';
import 'package:climate_change_projects/main.dart';
import 'package:climate_change_projects/helpers/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:climate_change_projects/core/di/service_locator.dart';
import 'package:climate_change_projects/l10n/app_localizations.dart';

Widget _bootstrap(Widget child) {
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
  testWidgets('onChangeRadio sets answer and keywords', (tester) async {
    tester.view.physicalSize = const ui.Size(1080, 1920);
    addTearDown(() => tester.view.resetPhysicalSize());
    await tester.pumpWidget(_bootstrap(const SizedBox.shrink()));
    final store = FormViewModel();
    expect(store.state.answers[0].answers, [0]);
    store.onChangeRadio(1, ['k1', 'k2']);
    expect(store.state.answers[0].answers, [1]);
    expect(store.state.answers[0].keywords, containsAll(['k1', 'k2']));
  });

  testWidgets('onChangeCheckbox toggles selection and maintains texts',
      (tester) async {
    await tester.pumpWidget(_bootstrap(const SizedBox.shrink()));
    final store = FormViewModel();
    // choose a valid option id from q1 (1..3)
    store.onChangeCheckbox(1, ['a']);
    expect(store.state.answers[0].answers.contains(1), true);
    store.onChangeCheckbox(1, ['a']);
    expect(store.state.answers[0].answers.contains(1), false);
  });

  testWidgets('nextQuestion advances and sets loaded state', (tester) async {
    await tester.pumpWidget(
        _bootstrap(const SingleChildScrollView(child: SizedBox(height: 1000))));
    final store = FormViewModel();
    final controller = PrimaryScrollController.of(
        tester.element(find.byType(SingleChildScrollView)));
    final initialId = store.state.currentQuestionId;
    store.onChangeRadio(2, const []);
    store.nextQuestion(controller);
    expect(store.state.currentQuestionId, greaterThan(initialId));
    expect(store.state.loading, BaseLoadingState.loaded);
  });

  testWidgets('getResults aggregates keywords counts', (tester) async {
    await tester.pumpWidget(_bootstrap(const SizedBox.shrink()));
    final store = FormViewModel();
    store.state.answers[0].keywords.addAll(['x', 'y', 'x']);
    final results = store.getResults();
    expect(results.any((e) => e['word'] == 'x' && e['value'] == 2), true);
    expect(results.any((e) => e['word'] == 'y' && e['value'] == 1), true);
  });

  testWidgets('getRecommendedKeywords suggests items not present',
      (tester) async {
    await tester.pumpWidget(_bootstrap(const SizedBox.shrink()));
    final store = FormViewModel();
    final recommended = store.getRecommendedKeywords(const [
      {'word': 'Participação', 'value': 1},
    ]);
    expect(recommended.isNotEmpty, true);
  }, skip: true);
}
