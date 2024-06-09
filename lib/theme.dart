import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    accentColor: Colors.amber,
    backgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
      bodyText1: TextStyle(fontSize: 16, color: Colors.black54),
      bodyText2: TextStyle(fontSize: 14, color: Colors.black45),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      textTheme: TextTheme(
        headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}
