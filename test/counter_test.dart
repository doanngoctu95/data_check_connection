// Import the test package and Counter class
import 'package:flutter/material.dart';
import 'package:flutterapp/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/main.dart';

void main() {
  group('Counter', () {
    test('Counter value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    testWidgets('Render Test', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('You have pushed the button this many times:'), findsOneWidget);
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });
  });
}