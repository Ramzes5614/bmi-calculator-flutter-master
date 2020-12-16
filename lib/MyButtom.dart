import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class MyBottom extends StatelessWidget {
  MyBottom({@required this.onTap, @required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kButtonColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: 70.0,
        width: double.infinity,
        child: Text(
          text,
          style: kLargeStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
