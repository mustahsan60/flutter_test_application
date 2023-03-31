import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';

class Top extends StatelessWidget {
  final Sticker sticker;

  const Top(this.sticker, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 120),
          width: double.infinity,
          height: 150,
          color: sticker.color,
        ),
        Positioned(
          top: 50,
          child: SizedBox(
            height: 250,
            child: Image(
              image: AssetImage(sticker.imgPath),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
