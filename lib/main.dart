import 'package:flutter/material.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_details_screen/chapter_details_screen.dart';
import 'package:islami_app/ui/style/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
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
