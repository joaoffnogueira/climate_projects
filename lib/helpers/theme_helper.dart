import 'dart:math';

import 'package:flutter/material.dart';

class ThemeHelper {
  int? theme;
  randomTheme() {
    theme = Random().nextInt(10);
  }

  Color get primaryColor =>
      myThemes.firstWhere((element) => element.id == theme).primaryColor;
  Color get backgroundColor =>
      myThemes.firstWhere((element) => element.id == theme).backgroundColor;
  String get image =>
      myThemes.firstWhere((element) => element.id == theme).image;
  String get credit =>
      myThemes.firstWhere((element) => element.id == theme).credit;

  List<MyThemes> myThemes = [
    MyThemes(
      id: 0,
      primaryColor: Colors.green,
      backgroundColor: const Color(0xffC9E0DA),
      image: 'assets/back1.jpg',
      credit: 'Two Possible Futures - Joana Campinas',
    ),
    MyThemes(
      id: 1,
      primaryColor: Colors.teal,
      backgroundColor: const Color(0xffACB8B2),
      image: 'assets/back2.jpg',
      credit: 'Children For Climate (Masks) - Fabián Ruiz',
    ),
    MyThemes(
      id: 2,
      primaryColor: Colors.orange,
      backgroundColor: const Color(0xffF3EEE4),
      image: 'assets/back3.jpg',
      credit: 'In Our Hands - Silvana P. Duncan',
    ),
    MyThemes(
      id: 3,
      primaryColor: Colors.yellow,
      backgroundColor: const Color(0xff656E8B),
      image: 'assets/back4.png',
      credit: 'Complex Problems Simple Solutions - Ed Dingly',
    ),
    MyThemes(
      id: 4,
      primaryColor: Colors.white,
      backgroundColor: const Color(0xff8587F6),
      image: 'assets/back5.jpg',
      credit: 'Overconsumption - Vanessa Pesarini',
    ),
    MyThemes(
      id: 5,
      primaryColor: Colors.pink,
      backgroundColor: const Color(0xffE4EEF2),
      image: 'assets/back6.jpg',
      credit: 'Cohesive Living - Preeti Singh',
    ),
    MyThemes(
      id: 6,
      primaryColor: Colors.white,
      backgroundColor: const Color(0xff8DA9BB),
      image: 'assets/back7.jpg',
      credit: 'Reuse Reduce - Tengwan Quek',
    ),
    MyThemes(
      id: 7,
      primaryColor: Colors.green,
      backgroundColor: const Color(0xffFAF4E0),
      image: 'assets/back8.jpg',
      credit: 'Plant A Tree, Breathe Free - Laura Valdés González',
    ),
    MyThemes(
      id: 8,
      primaryColor: Colors.green,
      backgroundColor: const Color(0xffE7BCAF),
      image: 'assets/back9.jpg',
      credit: 'Love Earth - Tengwan Quek',
    ),
    MyThemes(
      id: 9,
      primaryColor: Colors.orange,
      backgroundColor: const Color(0xff685CF3),
      image: 'assets/back10.jpg',
      credit: 'Energy Consumption - Tengwan Quek',
    ),
  ];
}

class MyThemes {
  final int id;
  final Color primaryColor;
  final Color backgroundColor;
  final String image;
  final String credit;

  MyThemes({
    required this.id,
    required this.primaryColor,
    required this.backgroundColor,
    required this.image,
    required this.credit,
  });
}
