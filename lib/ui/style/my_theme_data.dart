import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(
      0xFFB7935F); //make this Attribute static to, because i will not can use it unless it was static, because i will use it in static Attribute[static with(use) static]
  static Color darkPrimaryColor = Color(0xFF141A2E);
  static Color yelowColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: lightPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), topLeft: Radius.circular(32))),
    ),
    cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        elevation: 18),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor, //نظام الالوان بتاع الابليكيشن
      primary: lightPrimaryColor,
      onPrimary: Color(0xFFffffff),
      secondary: Color.fromARGB(127, 183, 146, 95),
      onSecondary: Colors.black,
    ),
    dividerColor: lightPrimaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:
          Colors.black, //the color be on the icon with it's label
      selectedIconTheme: IconThemeData(
        //the color be on the icon only , without it's label
        color: Colors.black,
        size: 38,
      ),
      unselectedItemColor: Colors.white,
      backgroundColor: lightPrimaryColor,
    ),
    iconTheme: IconThemeData(color: lightPrimaryColor, size: 30),
    indicatorColor: Colors.white,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
          color: lightPrimaryColor,
          fontSize: 22,
          fontWeight: FontWeight.normal),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: TextStyle(
        fontSize: 27,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent, //transparent => شفاف
      elevation: 0.0, //shadow
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  ); // make it(the Attribute) static to be able to access it without making an object from his class(MyThemeData)
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), topLeft: Radius.circular(32))),
    ),
    cardTheme: CardTheme(
        color: darkPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        elevation: 18),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor, //نظام الالوان بتاع الابليكيشن
      primary: darkPrimaryColor,
      onPrimary: Color(0xFFffffff),
      secondary: yelowColor,
      onSecondary: Colors.black,
    ),
    dividerColor: yelowColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yelowColor, //the color be on the icon with it's label
      selectedIconTheme: IconThemeData(
        //the color be on the icon only , without it's label
        color: yelowColor,
        size: 38,
      ),
      unselectedItemColor: Colors.white,
      backgroundColor: darkPrimaryColor,
    ),
    iconTheme: IconThemeData(color: yelowColor, size: 30),
    indicatorColor: yelowColor,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        color: yelowColor,
      ),
      labelMedium: TextStyle(
          color: yelowColor, fontSize: 22, fontWeight: FontWeight.normal),
      labelLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: TextStyle(
        fontSize: 27,
        color: yelowColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent, //transparent => شفاف
      elevation: 0.0, //shadow
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
