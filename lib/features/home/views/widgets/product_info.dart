import 'package:flutter/material.dart';
import 'package:task_porject/Features/home/data/models/product_model/product_model.dart';
import 'package:task_porject/Features/home/views/widgets/add_to_cart_button.dart';
import 'package:task_porject/Features/home/views/widgets/rating.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            productModel.description!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('EGP ${productModel.price}'),
          Row(
            children: [
              RatingItem(rating: productModel.rating!.rate!),
              Spacer(),
              AddToCartButton(),
            ],
          ),
        ],
      ),
    );
  }
}
