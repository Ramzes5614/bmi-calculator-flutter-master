import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/MyWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColour,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyWidget(
            colour: kButtonColour,
            cardChild: Text(
              'ИМТ калькулятор',
              style: kTextStyle,
            ),
            onPress: () {
              Navigator.pushNamed(context, '/calculator');
            },
          ),
          MyWidget(
            colour: kButtonColour,
            cardChild: Text('Инженерный калькулятор', style: kTextStyle),
            onPress: () {
              Navigator.pushNamed(context, '/engCalculator');
            },
          )
        ],
      ),
    );
  }
}
