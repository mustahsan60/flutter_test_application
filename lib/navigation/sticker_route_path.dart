class StickerRoutePath {
  final int id;
  final bool isUnknown;

  StickerRoutePath.list()
    : id = -1,
      isUnknown = false;

  StickerRoutePath.details(this.id) : isUnknown = false;

  StickerRoutePath.unknown()
    : id = -1,
      isUnknown = true;

  bool get isListPage => id == -1;

  bool get isDetailsPage => id != -1;
}