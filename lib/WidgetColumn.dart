import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  WidgetColumn({@required this.icon, @required this.txt});

  final IconData icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: kLabelStyle,
        )
      ],
    );
  }
}