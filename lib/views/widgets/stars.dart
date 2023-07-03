import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStar(),
        _buildStar(),
        _buildStar(),
        _buildStar(),
        _buildStar(),
        const Text(
            "5.0",
        ),
      ],
    );
  }

  Widget _buildStar() {
    return const Icon(
      Icons.star,
      size: 50,
    );
  }
}
