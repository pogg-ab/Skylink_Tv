import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skylink_tv/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SkylinkTVApp());

    // Since there's no counter in your current app, the following is more generic:
    // Verify that the HomeScreen is displayed.
    expect(find.text('SKYLINK TV'), findsOneWidget);

    // Example of how you might test navigation or other UI interactions:
    // Tap on the BottomNavigationBar item.
    await tester.tap(find.byIcon(Icons.tv));
    await tester.pump();

    // Verify that the 'Watch' screen is displayed.
    expect(find.text('Watch Screen Content'), findsOneWidget);
  });
}
