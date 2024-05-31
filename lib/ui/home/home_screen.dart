import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/ahadeth_tab_widget.dart';
import 'package:islami_app/ui/home/quran_tab_widget/quran_tab_widget.dart';
import 'package:islami_app/ui/home/radio_tab_widget/radio_tab_widget.dart';
import 'package:islami_app/ui/home/sebha_tab_widget/sebha_tab_widget.dart';
import 'package:islami_app/ui/home/settings_tab_widget/settings_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTabWidget(),
    AhadethTabWidget(),
    SebhaTabWidget(),
    RadioTabWidget(),
    SettingsTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/main_bg.png'))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami',
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,//indexبيقولي انا واقف علي انهو
          onTap: (index) {//=> give me the index that i taped on it
            selectedIndex = index;
            setState(() {// setState() => tell the widget to rebuild
              
            });
          },
          backgroundColor: Color(0xFFB7935F),
          items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFB7935F),
            icon: ImageIcon(AssetImage('assets/images/quran.png')),
          label: 'Quran'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFB7935F),
            icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
          label: 'Ahadeth'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFB7935F),
            icon: ImageIcon(AssetImage('assets/images/sebha.png')),
          label: 'Sebha'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFB7935F),
            icon: ImageIcon(AssetImage('assets/images/radio.png')),
          label: 'Radio'),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFB7935F),
            icon: Icon(Icons.settings),
          label: 'Settings'),
        ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}