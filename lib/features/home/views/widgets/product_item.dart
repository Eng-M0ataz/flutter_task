import 'package:flutter/material.dart';
import 'package:task_porject/Features/home/views/widgets/add_to_fav_button.dart';
import 'package:task_porject/Features/home/views/widgets/product_image.dart';
import 'package:task_porject/Features/home/views/widgets/product_info.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 145, 181, 209),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [ProductImage(), Spacer(), ProductInfo()],
          ),
        ),
        Positioned(right: 10, top: 10, child: AddToFavButton()),
      ],
    );
  }
}
