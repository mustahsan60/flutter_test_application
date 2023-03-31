import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';

class Middle extends StatelessWidget {
  final Sticker sticker;

  const Middle(this.sticker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sticker.name,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Rs${sticker.price}",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
            )
        )
      ],
    );
  }
}
