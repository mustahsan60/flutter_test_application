import 'package:flutter/material.dart';
import 'package:flutter_test_application/navigation/sticker_route_path.dart';

class StickerRouteInformationParser extends RouteInformationParser<StickerRoutePath> {
  @override
  Future<StickerRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location.toString());
    // Handle '/'
    if (uri.pathSegments.isEmpty) {
      return StickerRoutePath.list();
    }

    // Handle '/sticker/:id'
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'sticker') return StickerRoutePath.unknown();
      var remaining = uri.pathSegments[1];
      int? id = int.tryParse(remaining);
      if (id == -1) return StickerRoutePath.unknown();
      return StickerRoutePath.details(id!);
    }

    // Handle unknown routes
    return StickerRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(StickerRoutePath configuration) {
    if (configuration.isUnknown) {
      return const RouteInformation(location: '/404');
    }
    else if (configuration.isListPage) {
      return const RouteInformation(location: '/');
    }
    else {
      return RouteInformation(location: '/sticker/${configuration.id}');
    }
  }
}