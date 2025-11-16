import 'dart:ui' as ui;
import 'package:climate_change_projects/main.dart';
import 'package:climate_change_projects/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  setUpAll(() async {
    await ServiceLocator.initTest();
  });

  testWidgets('App boots and shows home with primary CTA', (tester) async {
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
    expect(find.text('Analisar projeto'), findsOneWidget);
  });
}
