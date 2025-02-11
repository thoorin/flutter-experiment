import 'package:flutter/material.dart';

abstract class Constants {
  static const primaryColor = Color(0xFFFFCA00);
  static const secondaryColor = Color(0xFFFF9900);
  static const tertiaryColor = Color(0xFF23173E);
  static const backgroundColor = Color(0xFFFFEE36);

  static const primaryBorderRadius = BorderRadius.all(Radius.circular(16.0));
  static const secondaryBorderRadius = BorderRadius.all(Radius.circular(8.0));

  static const primaryStrokeWidth = 2.0;

  static const primaryPadding = EdgeInsets.all(16.0);
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 16.0);

  static const primaryBorderSide = BorderSide(
    //color: Color(0xFF000000),
    width: primaryStrokeWidth,
  );

  static const primaryTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
}
