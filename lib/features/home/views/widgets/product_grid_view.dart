import 'package:flutter/material.dart';
import 'package:task_porject/Features/home/data/models/product_model/product_model.dart';
import 'package:task_porject/Features/home/views/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.productsList});
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.85,
        ),
        itemCount: productsList.length,
        itemBuilder:
            (context, index) => ProductItem(productModel: productsList[index]),
      ),
    );
  }
}
