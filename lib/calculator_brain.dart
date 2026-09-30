import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Chỉ số khối cơ thể của bạn cao hơn bình thường. Bạn nên tăng cường vận động và điều chỉnh chế độ ăn uống.';
    } else if (_bmi >= 18.5) {
      return 'Bạn có cân nặng lý tưởng và cơ thể cân đối. Hãy tiếp tục duy trì lối sống lành mạnh này!';
    } else {
      return 'Chỉ số BMI của bạn thấp hơn mức bình thường. Bạn có thể cần bổ sung thêm dinh dưỡng hợp lý.';
    }
  }

  Color getResultColor() {
    if (_bmi >= 25) {
      return const Color(0xFFFF5252);
    } else if (_bmi >= 18.5) {
      return const Color(0xFF24D876);
    } else {
      return const Color(0xFFFFB300);
    }
  }
}
