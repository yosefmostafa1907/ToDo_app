
import 'package:flutter/material.dart';

class MyThemeData{
  static const Color lightPrimaryColor=Color(0xff5D9CEC);
  static const Color darkPrimaryColor=Color(0xff5D9CEC);
  static ThemeData lightTheme=ThemeData(
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: Color(0xffDFECDB),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white
      ),
      labelSmall: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: lightPrimaryColor,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(
          size: 30
      ),

    )
  );
  static ThemeData darkTheme=ThemeData(
    primaryColor: lightPrimaryColor,
      scaffoldBackgroundColor: Color(0xff060E1E),
      textTheme: TextTheme(
          titleSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black
          ),
        labelSmall: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: darkPrimaryColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 30
        ),
      )
  );
}