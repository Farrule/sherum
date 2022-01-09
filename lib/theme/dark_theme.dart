import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  const DarkTheme._internal();

  static const MaterialColor _primary = Colors.pink;
  static const MaterialAccentColor _accent = Colors.amberAccent;

  static final ThemeData data = ThemeData(
    primarySwatch: _primary,
    accentColor: _accent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
      subtitle2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white)
    ),
    // * appBarTheme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      actionsIconTheme: IconThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
      )
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
    ),
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
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    ),
  );
}
