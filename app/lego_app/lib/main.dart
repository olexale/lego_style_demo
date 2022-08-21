import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:lego_app/di/di_initializer.dart';
import 'package:lego_navigation/lego_navigation.dart' as nav;

void main() {
  initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: legoTheme,
      routeInformationProvider: nav.routeInformationProvider,
      routeInformationParser: nav.routeInformationParser,
      routerDelegate: nav.routerDelegate,
    );
  }
}
