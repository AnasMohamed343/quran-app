//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_details_screen/chapter_details_screen.dart';
import 'package:islami_app/ui/home/settings_tab_widget/settings_tab_widget.dart';
import 'package:islami_app/ui/style/my_theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations
          .localizationsDelegates, // Add this line instead of the array
      // [  AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(provider.currentLang),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.currentTheme,
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
