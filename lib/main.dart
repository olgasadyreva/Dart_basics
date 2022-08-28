import 'package:flutter/material.dart';
import 'package:flutter_skillbox/delimeters_calculator.dart';
import 'package:flutter_skillbox/conversion_number_system.dart';
import 'package:flutter_skillbox/find_numbers.dart';
import 'package:flutter_skillbox/create_map.dart';
import 'package:flutter_skillbox/numbers_without _repetition.dart';
import 'package:flutter_skillbox/point.dart';
import 'package:flutter_skillbox/root_extraction.dart';
import 'package:flutter_skillbox/user.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Flutter Skillbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Основы Dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    DelitemersCalculator task1 = DelitemersCalculator();
    ConversionNumberSystem task2 = ConversionNumberSystem();
    FindNumbers task3 = FindNumbers();
    CreateMap task4 = CreateMap();
    NumbersWithoutRepetition task5 = NumbersWithoutRepetition();

    var result1 = task1.getNOD(30, 18);
    var result2 = task1.getNOK(18, 30);
    var result3 = task1.primeFactors(200);
    var result4 = task2.decimalToBin(145);
    var result5 = task2.binToDecimal(10010001);
    var result6 = task3.findNumbers('дом магазин 23 лес ручей 101 5 воробей -10');
    var result7 = task4.createMap(['кошка', 'корова', 'лошадь', 'собака', 'кошка', 'корова', 'корова', 'кошка', 'собака', 'кошка', 'овца']);
    var result8 = task5.createMap(['four', 'корова', 'лошадь', 'one', 'кошка', 'five', 'eight', 'кошка', 'one', 'кошка', 'five']);

    final t = Point(5, 10, 8);
    final another = Point(0, 0, 0);
    var result9 = t.distanceTo(another);

    double result10 = 0;
    try {
      print('try');
      // print(42.findRootExtraction(570.15, 2));
      result10 = 570.15.findRootExtraction(570.15, 2);

    } catch (e) {
      print('Невозможно извлечь корень. Ошибка: $e');
    }

    final admin = AdminUser('admin@gmail.com');

    final user1 = UserManager().addUser('test1@gmail.com');
    final user2 = UserManager().addUser('test2@gmail.com');
    final user3 = UserManager().addUser('test3@gmail.com');
    final user4 = UserManager().addUser('test4@gmail.com');
    final user5 = UserManager().addUser('admin@gmail.com');


    var result11 = admin.getMailSystem();
    print(result11);

    print(UserManager().getListEmail());




    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Задание1. Вычисление НОД: $result1, вычисление НОК: $result2',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 1. Разбиение на простые множители: $result3',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 2. Из десятичной в двоичную: $result4',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 2. Из двоичной в десятичную: $result5',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 3. Нахождение в строке чисел: $result6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 4. Повторяющиеся слова: $result7',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 5. Цифры без повторений: $result8',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 6. Расстояние между точками: $result9',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Задание 7. Вычисление корня степени n: $result10',
              style: Theme.of(context).textTheme.headline6,
            ),

          ],
        ),
      ),
    );
  }
}
