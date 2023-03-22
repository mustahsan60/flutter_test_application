import 'package:flutter/material.dart';
import 'package:flutter_test_application/navigation/sticker_route_information_parser.dart';
import 'package:flutter_test_application/navigation/sticker_router_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    StickerRouterDelegate routerDelegate = StickerRouterDelegate();
    StickerRouteInformationParser routeInformationParser = StickerRouteInformationParser();
    return MaterialApp.router(
      title: 'Sticker App',
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
    );
  }
}