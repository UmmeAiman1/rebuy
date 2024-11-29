import 'package:flutter/material.dart';

ThemeData  lightTheme = ThemeData(
  brightness: Brightness.light,

colorScheme: const ColorScheme.light(
  surface: Color(0xFFF5F5F5),
  primary: Color(0xffF857A6),
  secondary: Color(0xFFFF5A5F),
onPrimary: Color(0xFF087E8B),
onSecondary: Color(0xFF3C3C3C),
primaryContainer: Color(0xFFDEDEDE),
secondaryContainer: Color(0xFFC1839F)


  
  
),
textTheme: const TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'Dosis',
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0xFF3C3C3C),
  ),
  headlineSmall: TextStyle(
     fontFamily: 'Dosis',
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Color(0xffffffff),
  ),
  bodySmall: TextStyle(
    color: Color(0xff828282),
    fontSize: 14, 
    fontWeight: FontWeight.w400
  )
)

);