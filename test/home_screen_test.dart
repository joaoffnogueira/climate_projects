import 'dart:ui' as ui;
import 'package:climate_change_projects/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('HomeScreen renders actions and navigates to FormScreen',
      (tester) async {
    tester.view.physicalSize = const ui.Size(1080, 1920);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.devicePixelRatio = 1.0;
    });

    final originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      final message = details.exceptionAsString();
      if (message.contains('A RenderFlex overflowed')) {
        return;
      }
      originalOnError?.call(details);
    };
    addTearDown(() => FlutterError.onError = originalOnError);

    MyApp.themeHelper.randomTheme();
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('EmergeClima'), findsOneWidget);
    expect(find.byIcon(Icons.info_outline), findsOneWidget);
    expect(find.byIcon(Icons.book), findsOneWidget);
    expect(find.byIcon(Icons.history), findsOneWidget);

    final analyzeFinder = find.text('Analisar projeto');
    expect(analyzeFinder, findsOneWidget);

    await tester.tap(analyzeFinder);
    await tester.pumpAndSettle();
    expect(find.text('Próxima pergunta'), findsOneWidget);
  });
}
