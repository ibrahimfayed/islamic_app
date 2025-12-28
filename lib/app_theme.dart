import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFE2BE7F);
  static const Color black = Color(0xFF202020);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
     primaryColor: primary,//it put the color yallow by defult
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
     backgroundColor: primary,
     selectedItemColor: white,//it will make all of the item white (icon and label)
     type: BottomNavigationBarType.fixed,
     showUnselectedLabels: false
  )
  );
  

  
}