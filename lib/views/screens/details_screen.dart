import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';
import '../widgets/sticker_details.dart';

class DetailsScreen extends StatelessWidget {
  final Sticker sticker;

  const DetailsScreen(this.sticker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StickerDetails(sticker),
    );
  }
}
