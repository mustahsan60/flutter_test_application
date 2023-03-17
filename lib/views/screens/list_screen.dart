import 'package:flutter/material.dart';
import '../widgets/sticker_list.dart';

class DetailsScreen extends StatelessWidget {

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const StickerList(),
    );
  }
}