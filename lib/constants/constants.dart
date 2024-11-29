import 'package:flutter/material.dart';

class Constants {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  } 
   static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  } 
}