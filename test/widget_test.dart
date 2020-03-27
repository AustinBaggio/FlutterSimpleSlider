import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('Clicking slider updates state', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.text('40.0'), findsOneWidget);

    // This will tap in middle of slider
    await tester.tap(find.byType(Slider));
    await tester.pump();

    expect(find.text('50.0'), findsOneWidget);
  });
}
