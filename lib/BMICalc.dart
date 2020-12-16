import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight}) {
    bmi = weight / pow(height / 100, 2);
  }

  int weight;
  int height;

  double bmi;

  String calculateBMI() {
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi > 25) {
      return 'Жирный';
    } else if (bmi > 18.5) {
      return 'Нормальный';
    } else {
      return 'Худой';
    }
  }

  String getAnnotation() {
    if (bmi > 25) {
      return 'Ваш индекс массы тела слишком высокий, вам следует похудеть.';
    } else if (bmi > 18.5) {
      return 'Ваш индекс массы тела в пределах нормы.';
    } else {
      return 'Ваш индекс массы тела слишком низкий, вам следует набрать вес.';
    }
  }
}
