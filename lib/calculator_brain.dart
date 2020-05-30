import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  String CalculateBMI() {
    double bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
}
