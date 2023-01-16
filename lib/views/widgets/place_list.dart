import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/place.dart';

class PlaceList extends StatelessWidget {
  final List<Place> places;
  final ValueChanged<Place> onTapped;

  const PlaceList(this.places, this.onTapped, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List'
        ),
      ),
      body: ListView(
        children: [
          for (var place in places)
            ListTile(
              title: Text(place.name),
              onTap: () => onTapped(place),
            )
        ],
      ),
    );
  }
}