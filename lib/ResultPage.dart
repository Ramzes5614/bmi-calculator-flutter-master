import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/MyButtom.dart';
import 'package:bmi_calculator/MyWidget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmi,
    @required this.result,
    @required this.note,
  });

  String bmi;
  String result;
  String note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColour,
          title: Text('Вывод', style: kTextStyle),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  '',
                  style: kLargeStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: MyWidget(
                colour: kinactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: kResultStyle,
                    ),
                    Text(
                      bmi,
                      style: kLargeStyle,
                    ),
                    Text(
                      note,
                      style: kSimpleTextStyle,
                    )
                  ],
                ),
              ),
            ),
            MyBottom(
                onTap: () {
                  Navigator.pop(context);
                },
                text: 'Вернуться')
          ],
        ));
  }
}
