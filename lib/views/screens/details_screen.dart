import 'package:flutter/material.dart';
import 'package:flutter_test_application/model/sticker.dart';
import 'package:flutter_test_application/views/widgets/tag_list.dart';
import '../widgets/middle.dart';
import '../widgets/stars.dart';
import '../widgets/top.dart';

class DetailsScreen extends StatelessWidget {
  final Sticker sticker;

  const DetailsScreen(this.sticker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Top(sticker),
          Middle(sticker),
          TagList(sticker),
          const Stars(),
        ],
      )
    );
  }
}
