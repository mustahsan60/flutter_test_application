import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Screen'),
      ),
      body: const Center(
        child: Image(image: AssetImage('assets/images/img_basketball.jpg')),
      )
    );
  }
}