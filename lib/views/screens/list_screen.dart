import 'package:flutter/material.dart';
import '../../model/sticker.dart';
import '../widgets/sticker_list_item.dart';

class StickerListScreen extends StatelessWidget {
  final List<Sticker> stickers;
  final ValueChanged<Sticker> onTapped;

  const StickerListScreen(this.stickers, this.onTapped, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for (Sticker sticker in stickers)
            InkWell(
              child: StickerListItem(sticker),
              onTap: () => onTapped(sticker),
            )
        ],
      )
    );
  }
}