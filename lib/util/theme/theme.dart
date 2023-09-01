import 'package:flutter/material.dart';

ThemeData light_theme(BuildContext context)
{
  return ThemeData(
    brightness: Brightness.light,

    appBarTheme: AppBarTheme(
      color: Colors.teal,
    ),

  );
}