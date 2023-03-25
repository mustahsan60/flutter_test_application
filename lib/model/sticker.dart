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

  const Sticker(this.name, this.tags, this.price, this.imgPath);
}