import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFE2BE7F);
  static const Color black = Color(0xFF202020);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarThemeData(
      backgroundColor: black,
      foregroundColor: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(//هنا مينفعش أخد الستايل من نفس الفايل لأني فيه فهنشأه عادي من الأول
       color: primary,
       fontSize: 20,
       fontWeight: FontWeight.bold
      )
    ),
    scaffoldBackgroundColor: black,
     primaryColor: primary,//it put the color yallow by defult
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
     backgroundColor: primary,
     selectedItemColor: white,//it will make all of the item white (icon and label)
     type: BottomNavigationBarType.fixed,
     showUnselectedLabels: false,
  ),
  textTheme: TextTheme(
    titleSmall: //names of this exested in texttheme class on flutter site
    TextStyle(
      color: AppTheme.white,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    titleMedium: TextStyle(
      color: AppTheme.white,
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
    titleLarge: TextStyle(
      color: AppTheme.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
    headlineSmall: TextStyle(
      color: AppTheme.white,
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
  )
  );
  

  
}