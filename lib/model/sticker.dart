import 'dart:ui';

enum Tag {
  coding,
  development,
  cool,
  cute,
}

class Sticker {
  final String name;
  final List<Tag> tags;
  final int price;
  final String imgPath;
  final Color color;

  const Sticker(this.name, this.tags, this.price, this.imgPath, this.color);
}