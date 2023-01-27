import 'package:flutter/cupertino.dart';

class Sticker {
  final String name;
  final String type;
  final int price;
  final AssetImage img;

  const Sticker(this.name, this.type, this.price, this.img);
}