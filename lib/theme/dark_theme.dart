import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  const DarkTheme._internal();

  static const MaterialColor _primary = Colors.indigo;
  static const MaterialAccentColor _accent = Colors.amberAccent;

  static final ThemeData data = ThemeData(
    primarySwatch: _primary,
    accentColor: _accent,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
    ),
    primaryTextTheme: const TextTheme().copyWith(
        subtitle1: TextStyle().copyWith(
        color: Colors.teal,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      focusedBorder: OutlineInputBorder(
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
    dialogTheme: DialogTheme(
        titleTextStyle: TextStyle(
      color: Colors.deepOrange,
    )),
  );
}
