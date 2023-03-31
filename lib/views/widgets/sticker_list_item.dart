import 'package:flutter/material.dart';

import '../../model/sticker.dart';

class StickerListItem extends StatelessWidget {
  final Sticker sticker;

  const StickerListItem(this.sticker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 18 / 11,
            child: Image(
              image: AssetImage(sticker.imgPath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(sticker.name),
                const SizedBox(height: 16.0),
                Text('Price: ${sticker.price}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}