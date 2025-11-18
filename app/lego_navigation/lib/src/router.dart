import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_potter/harry_potter.dart';
import 'package:lego_list/lego_list.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LegoListFlow()),
    GoRoute(
      path: '/universe/hp',
      builder: (context, state) => const HarryPotterFlow(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(appBar: AppBar()),
);
