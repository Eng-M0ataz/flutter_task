import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddToFavButton extends StatefulWidget {
  const AddToFavButton({super.key});

  @override
  State<AddToFavButton> createState() => _AddToFavButtonState();
}

class _AddToFavButtonState extends State<AddToFavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFav = !isFav;
          });
        },
        child:
            isFav
                ? Icon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 24)
                : Icon(
                  FontAwesomeIcons.heart,
                  color: Color(0xff004087),
                  size: 24,
                ),
      ),
    );
  }
}
