import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Application'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}