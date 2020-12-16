import 'package:bmi_calculator/BMICalc.dart';
import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/MyWidget.dart';
import 'MyRowIconButton.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/WidgetColumn.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weidth = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: MyWidget(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kactiveCardColour
                      : kinactiveCardColour,
                  cardChild:
                      WidgetColumn(icon: FontAwesomeIcons.mars, txt: 'Муж'),
                  matrix4: selectedGender == Gender.male
                      ? Matrix4.rotationZ(0.1)
                      : null,
                )),
                Expanded(
                  child: MyWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild:
                        WidgetColumn(icon: FontAwesomeIcons.venus, txt: 'Жен'),
                    matrix4: selectedGender == Gender.female
                        ? Matrix4.rotationZ(0.1)
                        : null,
                  ),
                )
              ],
            )),
            Expanded(
              child: MyWidget(
                colour: kMainColour,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      'Рост',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kLargeStyle,
                        ),
                        Text(
                          ' см',
                          style: kLabelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0),
                          activeTrackColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x30EB1555),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 230.0,
                            onChanged: (double newVal) {
                              setState(() {
                                height = newVal.round();
                              });
                            }))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: MyWidget(
                        colour: kMainColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Масса',
                              style: kLabelStyle,
                            ),
                            Text(
                              weidth.toString(),
                              style: kLargeStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RowIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      weidth--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RowIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      weidth++;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: MyWidget(
                        colour: kMainColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Возраст',
                              style: kLabelStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kLargeStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RowIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RowIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ))),
              ],
            )),
            MyBottom(
              text: 'Посчитать',
              onTap: () {
                Calculator calc = Calculator(height: height, weight: weidth);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                          result: calc.getResult(),
                          bmi: calc.calculateBMI(),
                          note: calc.getAnnotation())),
                );
              },
            )
          ],
        ));
  }
}

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
