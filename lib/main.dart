import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';
import 'package:flutter_test_application/views/widgets/sticker_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Sticker mySticker = const Sticker('Dash', 'Tech', 100, 'assets/images/img1.jpg');
    return MaterialApp(
      title: 'Test Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Application'),
        ),
        body: StickerDetails(mySticker)
      ),
    );
  }
}