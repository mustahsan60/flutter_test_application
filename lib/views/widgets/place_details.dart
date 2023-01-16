import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/place.dart';

class PlaceDetails extends StatelessWidget {
  final Place place;

  const PlaceDetails(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details'
        ),
      ),
      body: Column(
        children: [
          Text(place.name),
          Text(place.location),
          Text(place.type),
        ],
      ),
    );
  }
}
