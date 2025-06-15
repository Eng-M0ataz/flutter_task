import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Review (${rating.toString()})'),
        Icon(Icons.star, color: Colors.amberAccent),
      ],
    );
  }
}
