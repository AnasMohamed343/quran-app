import 'package:flutter/material.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_details_screen/chapter_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFB7935F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F), //نظام الالوان بتاع الابليكيشن
          primary: Color(0xFFB7935F),
          onPrimary: Color(0xFFffffff),
          secondary: Color.fromARGB(127, 183, 146, 95),
          onSecondary: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:
              Colors.black, //the color be on the icon with it's label
          selectedIconTheme: IconThemeData(
            //the color be on the icon only , without it's label
            color: Colors.black,
            size: 38,
          ),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFFB7935F),
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
      ),
      darkTheme: ThemeData(
        primaryColor: Color(0xFF141A2E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F), //نظام الالوان بتاع الابليكيشن
          primary: Color(0xFF141A2E),
          onPrimary: Color(0xFFffffff),
          secondary: Color(0xFFFACC1D),
          onSecondary: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:
              Colors.black, //the color be on the icon with it's label
          selectedIconTheme: IconThemeData(
            //the color be on the icon only , without it's label
            color: Colors.black,
            size: 38,
          ),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFFB7935F),
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
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent,
      ),
      routes: {
        Splash.routeName: (context) => Splash(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
