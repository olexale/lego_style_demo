import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

FutureOr<void> iSeeText(WidgetTester tester, String text) {
  expect(find.text(text), findsOneWidget);
}
