import 'package:climate_change_projects/helpers/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BackgroundWidget renders image and credit overlay',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: BackgroundWidget(
          image: 'assets/back1.jpg',
          credit: 'Photo by Someone',
        ),
      ),
    ));

    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Photo by Someone'), findsOneWidget);
  });
}
