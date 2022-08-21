import 'package:flutter/material.dart';
import 'package:lego_navigation/src/router.dart';

RouteInformationProvider get routeInformationProvider =>
    router.routeInformationProvider;

RouteInformationParser<Object> get routeInformationParser =>
    router.routeInformationParser;

RouterDelegate<Object> get routerDelegate => router.routerDelegate;
