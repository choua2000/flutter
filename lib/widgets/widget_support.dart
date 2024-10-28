import 'package:flutter/material.dart';

class AppWidgetSupport {
  static TextStyle boldTextFilledStyle() {
    return TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins");
  }
  static TextStyle LightTextFilledStyle() {
    return TextStyle( 
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins");
  }
  static TextStyle HeadleTextFilledStyle() {
    return TextStyle( 
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins");
  }
  static TextStyle semiBoldTextFilledStyle() {
    return TextStyle( 
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins");
  }
}