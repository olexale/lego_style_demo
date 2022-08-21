// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_flow_is_running_with_configuration.dart';
import './step/i_see_widget.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/navigation_to_universe_is_requested.dart';

void main() {
  group('''Lego List''', () {
    testWidgets('''Lego world list is shown''', (tester) async {
      await theFlowIsRunningWithConfiguration(tester, 'list');
      await iSeeWidget(tester, ListView);
      await iSeeText(tester, 'Lego Star Wars');
      await iSeeText(tester, 'Lego Marvel');
      await iSeeText(tester, 'Lego Harry Potter');
      await iSeeText(tester, 'Lego DC');
    });
    testWidgets('''Lego world grid is shown''', (tester) async {
      await theFlowIsRunningWithConfiguration(tester, 'grid');
      await iSeeWidget(tester, GridView);
      await iSeeText(tester, 'Lego Star Wars');
      await iSeeText(tester, 'Lego Marvel');
      await iSeeText(tester, 'Lego Harry Potter');
      await iSeeText(tester, 'Lego DC');
    });
    testWidgets('''I can see world's details''', (tester) async {
      await theFlowIsRunningWithConfiguration(tester, 'list');
      await iTapText(tester, 'Lego Harry Potter');
      await navigationToUniverseIsRequested(tester, 'hp');
    });
  });
}
