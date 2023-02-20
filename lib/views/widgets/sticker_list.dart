import 'package:flutter/material.dart';
import 'package:flutter_test_application/views/widgets/sticker_list_item.dart';

class StickerList extends StatelessWidget {
  const StickerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: const [
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
        StickerListItem(),
      ],
    );
  }
}
