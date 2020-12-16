import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  MyWidget({@required this.colour, this.cardChild, this.matrix4, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Matrix4 matrix4;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: colour),
        transform: matrix4,
      ),
    );
  }
}
