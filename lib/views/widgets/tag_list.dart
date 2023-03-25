import 'package:flutter/material.dart';

import '../../model/sticker.dart';


class TagList extends StatelessWidget {
  final List<Tag> tags;

  const TagList(this.tags, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int x = 0; x < tags.length; x += 5)
          SubTagList(tags, x)
      ],
    );
  }
}

class SubTagList extends StatelessWidget {
  final List<Tag> tags;
  final int start;

  const SubTagList(this.tags, this.start, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = start; i <= start + 5 && i < tags.length; i++)
          Expanded(
            child: Card(
              child: Text(
                  tags[i].name
              ),
            ),
          )
      ],
    );
  }
}