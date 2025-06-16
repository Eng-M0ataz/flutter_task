import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_porject/core/utils/functions/snack_bar.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSnackBar(
          message: 'this product added to your cart successfully',
          context: context,
        );
      },
      child: FaIcon(FontAwesomeIcons.circlePlus, color: Color(0xff004087)),
    );
  }
}
