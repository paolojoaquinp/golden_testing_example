import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_testing_example/home_page.dart';

void main() {
  testWidgets('My home page golden test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.byType(HomePage), findsOneWidget);

    await expectLater(
      find.byType(HomePage),
      matchesGoldenFile('goldens/home_page.png'),
    );
  });
}
