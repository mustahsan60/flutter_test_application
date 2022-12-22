import 'package:flutter/material.dart';

void main() {
  runApp(const PlacesApp());
}

class Place {
  final String name;
  final String location;
  final String text;
  final String imagePath;

  Place(this.name, this.location, this.text, this.imagePath);
}

class PlacesApp extends StatefulWidget {
  const PlacesApp({Key? key}) : super(key: key);

  @override
  State<PlacesApp> createState() => _PlacesAppState();
}

class _PlacesAppState extends State<PlacesApp> {
  Place _currentPlace = Place('name', 'location', '', 'imagePath');

  List<Place> places = [
    Place("Taj Mahal", "Agra", "It is one of the wonders of the world", 'ab/cd'),
    Place("Laal Quila", "New Delhi", "text text text text text text text", 'ab/cd'),
    Place("Jama Masjid", "New Delhi", "text text text text text text text", 'ab/cd'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Places App",
      home: PlacesListScreen(
          places: places,
          onTapped: handlePlaceTapped
      ),
    );
  }

  void handlePlaceTapped(Place place) {
    setState(() {
      _currentPlace = place;
    });
  }
}


class PlacesListScreen extends StatelessWidget {
  final List<Place> places;
  final ValueChanged<Place> onTapped;

  const PlacesListScreen({super.key, required this.places, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (var place in places)
            ListTile(
              title: Text(place.name),
              subtitle: Text(place.location),
              onTap: () => onTapped(place),
            )
        ],
      ),
    );
  }
}

class PlaceDetailsScreen extends StatelessWidget {
  Place place;

  PlaceDetailsScreen(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    place.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  place.location,
                  style: const TextStyle(color: Colors.grey),
                ),
              ])),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41')
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        place.text,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: ListView(
          children: [
            Image.asset(
              place.imagePath,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData iconData, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(iconData, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
