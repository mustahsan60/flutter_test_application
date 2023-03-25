import 'package:flutter/material.dart';
import 'package:flutter_test_application/navigation/sticker_route_information_parser.dart';
import 'package:flutter_test_application/navigation/sticker_router_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final StickerRouterDelegate _routerDelegate = StickerRouterDelegate();
  final StickerRouteInformationParser _routeInformationParser = StickerRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sticker App',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}