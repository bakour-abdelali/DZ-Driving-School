import 'package:ahmed/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  //static final Theme modeDarac;
  static final ThemeData isDarcMode = ThemeData.dark().copyWith(
    textTheme: const TextTheme(
      //subtitle1: Text,
      headline6: TextStyle(
        fontFamily: 'Tajawal',
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontFamily: 'Tajawal',
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Tajawal',
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.black45,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      textStyle: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    )),
    //primarySwatch: Colors.green,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 11, 221, 18),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      elevation: 30,
      unselectedItemColor: Colors.deepOrange,
      backgroundColor: Color(0x00333739),
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.yellow, size: 35),
        // backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.grey,
        elevation: 0.0,
        //color: Colors.black,
        titleTextStyle: TextStyle(
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white)),
  );
  static final ThemeData isLightMode = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      //subtitle1: Text,
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Tajawal',
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontFamily: 'Tajawal',
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Tajawal',
        //fontFamily: 'Amiri',
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      textStyle: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    )),
    //primarySwatch: Colors.green,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 11, 221, 18),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      elevation: 30,
      unselectedItemColor: Colors.deepOrange,
      backgroundColor: Colors.white, //Color(0x00333739),
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        // backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: primaryColor,
        elevation: 10,
        //color: Colors.black,
        titleTextStyle: TextStyle(
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white)),
  );
}
