import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

/// Example: Then I see {SomeWidget} widget
FutureOr<void> iSeeWidget(WidgetTester tester, Type type) {
  expect(find.byType(type), findsOneWidget);
}
