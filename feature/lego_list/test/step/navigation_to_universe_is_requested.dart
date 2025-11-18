import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:lego_list/src/navigation/navigation.dart';
import 'package:mocktail/mocktail.dart';

FutureOr<void> navigationToUniverseIsRequested(WidgetTester tester, String id) {
  final mock = GetIt.I<LegoListNavigation>();
  verify(() => mock.openUniverse(id)).called(1);
}
