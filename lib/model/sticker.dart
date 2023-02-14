import 'package:flutter_test_application/model/tag.dart';

class Sticker {
  final String name;
  final List<Tag> tags;
  final int price;
  final String imgPath;

  const Sticker(this.name, this.tags, this.price, this.imgPath);
}