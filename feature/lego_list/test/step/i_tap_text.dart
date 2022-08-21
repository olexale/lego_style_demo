import 'package:flutter_test/flutter_test.dart';

Future<void> iTapText(WidgetTester tester, String text) async {
  await tester.tap(find.text(text));
  await tester.pump();
}
