import 'package:bmi_calculator/EngCalculator.dart';
import 'package:bmi_calculator/ResultPage.dart';
import 'package:bmi_calculator/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/calculator': (context) => InputPage(),
          '/result': (context) =>
              ResultPage(bmi: '18.0', result: 'Норма', note: ''),
          '/engCalculator': (context) => EngCalculatorPage(),
        });
  }
}
