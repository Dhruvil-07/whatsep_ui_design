import 'package:flutter/material.dart';

ThemeData dark_theme(BuildContext context)
{
   return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
     scaffoldBackgroundColor: Colors.black,

      appBarTheme: AppBarTheme(
         color: Colors.teal,
      ),

   );

}