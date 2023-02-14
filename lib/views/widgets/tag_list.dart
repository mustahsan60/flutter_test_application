import 'package:flutter/material.dart';

import '../../model/tag.dart';

class tagList extends StatelessWidget {
  final List<Tag> tags;

  const tagList(this.tags, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int x = 0; x < tags.length; x += 5)
          subTagList(tags, x)
      ],
    );
  }
}

class subTagList extends StatelessWidget {
  final List<Tag> tags;
  final int start;

  const subTagList(this.tags, this.start, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = start; i <= start + 5 && i < tags.length; i++)
          Expanded(
            child: Card(
              child: Text(
                  tags[i].tagType
              ),
            ),
          )
      ],
    );
  }
}