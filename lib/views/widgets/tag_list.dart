import 'package:flutter/material.dart';

import '../../model/sticker.dart';


class TagList extends StatelessWidget {
  final Sticker sticker;

  const TagList(this.sticker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (Tag tag in sticker.tags)
              Card(
                color: sticker.color,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tag.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                )
              )
          ],
        ),
      ),
    );
  }
}