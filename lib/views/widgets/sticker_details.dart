import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';
import 'package:flutter_test_application/views/widgets/tag_list.dart';

class StickerDetails extends StatelessWidget {
  final Sticker sticker;

  const StickerDetails(this.sticker, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(sticker.imgPath)),
              Text(
                sticker.name,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        TagList(
          sticker.tags
        ),
        Text(
          "Price: ${sticker.price}"
        )
      ],
    );
  }
}
