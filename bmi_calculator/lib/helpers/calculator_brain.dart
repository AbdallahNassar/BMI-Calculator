import 'dart:math';

import 'package:flutter/material.dart';

import '.././models/human.dart';

class CalculatorBrain {
  // static to call the funciton w/o having to inistanciating the class.
  static Map<String, dynamic> getBMIResult() {
    final double bmi = Human.userWeight / pow(Human.userHeight / 100, 2);
    print(bmi);
    if (bmi >= 25) {
      return {
        'result': bmi,
        'category': 'Overweight',
        'color': Colors.red,
        'advice':
            'You have a higher than normal body weight. Try to exercise more.',
      };
    } else if (bmi >= 18.5) {
      return {
        'result': bmi,
        'category': 'Nomral',
        'color': Colors.green,
        'advice': 'You have a normal body weight. Good Job!',
      };
    } else {
      return {
        'result': bmi,
        'category': 'UnderWeight',
        'color': Colors.red,
        'advice': 'You have a lower than normal body weight. Try to eat more.',
      };
    }
  }
}
