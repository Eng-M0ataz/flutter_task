import 'package:flutter/material.dart';
import 'package:task_porject/Features/home/views/widgets/add_to_cart_button.dart';
import 'package:task_porject/Features/home/views/widgets/rating.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Product Name", maxLines: 1, overflow: TextOverflow.ellipsis),
          Text(
            "Product Description",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('price'),
          Row(children: [RatingItem(), Spacer(), AddToCartButton()]),
        ],
      ),
    );
  }
}
