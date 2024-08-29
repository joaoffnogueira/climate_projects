import 'dart:math';

import 'package:flutter/material.dart';

class ThemeHelper {
  int? theme;
  randomTheme() {
    theme = Random().nextInt(5);
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
      credit: 'Two Possible Futures - Joana Campinas for ArtistsForClimate.org',
    ),
    MyThemes(
      id: 1,
      primaryColor: Colors.teal,
      backgroundColor: const Color(0xffACB8B2),
      image: 'assets/back2.jpg',
      credit:
          'Children For Climate (Masks) - Fabián Ruiz for ArtistsForClimate.org',
    ),
    MyThemes(
      id: 2,
      primaryColor: Colors.orange,
      backgroundColor: const Color(0xffF3EEE4),
      image: 'assets/back3.jpg',
      credit: 'In Our Hands - Silvana P. Duncan for ArtistsForClimate.org',
    ),
    MyThemes(
      id: 3,
      primaryColor: Colors.yellow,
      backgroundColor: const Color(0xff656E8B),
      image: 'assets/back4.png',
      credit:
          'Complex Problems Simple Solutions - Ed Dingly for ArtistsForClimate.org',
    ),
    MyThemes(
      id: 4,
      primaryColor: Colors.white,
      backgroundColor: const Color(0xff8587F6),
      image: 'assets/back5.jpg',
      credit: 'Overconsumption - Vanessa Pesarini for ArtistsForClimate.org',
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
