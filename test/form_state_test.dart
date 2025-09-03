import 'package:climate_change_projects/features/form/presentation/stores/form_state.dart'
    as fstate;
import 'package:climate_change_projects/helpers/base_state.dart';
import 'package:climate_change_projects/l10n/app_localizations.dart';
import 'package:climate_change_projects/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

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
  testWidgets('FormState.initial sets expected defaults', (tester) async {
    await tester.pumpWidget(_localizedApp(const SizedBox.shrink()));
    final state = fstate.FormState.initial();
    expect(state.loading, BaseLoadingState.initial);
    expect(state.currentQuestionId, 1);
    expect(state.answers.length, 36);
    expect(state.answers.first.answers, [0]);
    expect(state.finalSuggestionsController.text, '');
  });

  testWidgets('copyWith overrides fields and preserves others', (tester) async {
    await tester.pumpWidget(_localizedApp(const SizedBox.shrink()));
    final state = fstate.FormState.initial();
    final updated = state.copyWith(
      loading: BaseLoadingState.loaded,
      currentQuestionId: 2,
    );
    expect(updated.loading, BaseLoadingState.loaded);
    expect(updated.currentQuestionId, 2);
    expect(updated.answers, same(state.answers));
  });
}
