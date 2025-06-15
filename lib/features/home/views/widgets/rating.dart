import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Review (4.5)'),
        Icon(Icons.star, color: Colors.amberAccent),
      ],
    );
  }
}
