import 'package:flutter/material.dart';

class StickerListItem extends StatelessWidget {
  const StickerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AspectRatio(
            aspectRatio: 18 / 11,
            child: Image(
              image: AssetImage('assets/images/img1.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Flutter'),
                SizedBox(height: 16.0),
                Text('Price: 200'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}