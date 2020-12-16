import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class EngCalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColour,
        title: Text(
          'Инженерный калькулятор',
          style: kLabelStyle,
        ),
      ),
      body: Center(
        child: Text(
          'В разработке...',
          style: kTextStyle,
        ),
      ),
    );
  }
}
