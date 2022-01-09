import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//class Common {
//  static const int _primaryValue = 0xFF212121;
//  static const MaterialColor primaryColor = MaterialColor(
//    _primaryValue,
//    <int, Color>{
//      50: Color(0xFF212121),
//      100: Color(0xFF212121),
//      200: Color(0xFF212121),
//      300: Color(0xFF212121),
//      400: Color(0xFF212121),
//      500: Color(_primaryValue),
//      600: Color(0xFF212121),
//      700: Color(0xFF212121),
//      800: Color(0xFF212121),
//      900: Color(0xFF212121),
//    },
//  );
//}

const Color black = Color(0xFF212121);

class LightTheme {
  const LightTheme._internal();

  static const MaterialColor _primary = Colors.pink;
  static const MaterialAccentColor _accent = Colors.amberAccent;

  static final ThemeData data = ThemeData(
    primarySwatch: _primary,
    accentColor: _accent,
    scaffoldBackgroundColor: Colors.white,
    // * textTheme
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black),
      headline3: TextStyle(color: Colors.black),
      headline4: TextStyle(color: Colors.black),
      headline5: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
      subtitle1: TextStyle(color: Colors.black),
      subtitle2: TextStyle(color: Colors.black),
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.black),
      caption: TextStyle(color: Colors.black),
      overline: TextStyle(color: Colors.black),
    ),
    // * appBarTheme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      actionsIconTheme: IconThemeData(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
      )
    ),
    // * buttomTheme
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
    ),
    // * primaryTextTheme
    primaryTextTheme: const TextTheme().copyWith(
      subtitle1: const TextStyle().copyWith(
        color: Colors.teal,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent),
      ),
      fillColor: Colors.orange.shade50,
      labelStyle: const TextStyle(
        color: Colors.orange,
      ),
    ),
    iconTheme: const IconThemeData.fallback().copyWith(
      color: _accent,
    ),
    primaryIconTheme: const IconThemeData.fallback().copyWith(
      color: Colors.greenAccent,
    ),
    accentIconTheme: const IconThemeData.fallback().copyWith(
      color: Colors.red,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: _primary,
    ).copyWith(
      onSurface: _primary,
    ),
    dialogTheme: const DialogTheme(
        titleTextStyle: TextStyle(
      color: Colors.deepOrange,
    )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
    ),
  );
}
