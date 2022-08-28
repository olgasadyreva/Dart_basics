import 'dart:math';

import 'package:flutter/material.dart';

class DelitemersCalculator {
  void start() {
    print("The class has started.");
  }

  getNOD(int a, int b) {
    while (a != 0 && b != 0) {
      if (a > b) {
        a = a % b;
      } else {
        b = b % a;
      }
    }
    int c = a + b;

    debugPrint(c.toString());
    return c;
  }

  getNOK(int a, int b) {
    int c = (a / getNOD(a, b)).round();
    debugPrint(c.toString());
    return c;
  }

  primeFactors(int a) {
    List<int> numbers = [];

    for (var i = 1; i <= a; i++) {
      if (a % i == 0) {
        numbers.add(i);
      }
    }
    return numbers;
  }
}
