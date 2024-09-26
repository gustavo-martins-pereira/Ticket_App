import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color ticketTopColor = const Color(0xFF526799);
  static Color ticketBottomColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFD2BDB6);

  static TextStyle textStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    color: textColor,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle2 = TextStyle(
    color: textColor,
    fontSize: 21,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
