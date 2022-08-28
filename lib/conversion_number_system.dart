import 'dart:math';

import 'package:flutter/material.dart';

class ConversionNumberSystem {
  void start() {
    print("The class has started.");
  }

  decimalToBin(int a) {
    String res = '';
    while (a > 0) {
      if (a % 2 > 0) {
        res = '1$res';
      } else {
        res = '0$res';
      }
      a = a >> 1;
    }
    debugPrint(res);
    return res;
  }

  binToDecimal(int a) {
    int? res = 0;
    int lengthNumber = a.toString().length;

    String numberString = a.toString();

    for (int i = 0; i < lengthNumber; i++) {
      if (res == 0) {
        res = (int.tryParse(numberString[i])! * pow(2, lengthNumber - (i + 1))) as int?;
      } else {
        res = (res! + int.tryParse(numberString[i])! * pow(2, lengthNumber - (i + 1))) as int?;
      }
    }
    return res;
  }
}
