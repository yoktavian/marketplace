import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marketplace/src/app.dart';

void main() {
  group(
    'App Cases',
    () {
      testWidgets(
        'App should contain router app',
        (widgetTester) async {
          await widgetTester.pumpWidget(
            MarketplaceApp(),
          );

          expect(find.byKey(Key('router-app')), findsOneWidget);
        },
      );
    },
  );
}
