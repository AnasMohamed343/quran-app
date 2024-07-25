import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/ahadeth_tab_widget.dart';
import 'package:islami_app/ui/home/quran_tab_widget/quran_tab_widget.dart';
import 'package:islami_app/ui/home/radio_tab_widget/radio_tab_widget.dart';
import 'package:islami_app/ui/home/sebha_tab_widget/sebha_tab_widget.dart';
import 'package:islami_app/ui/home/settings_tab_widget/settings_tab_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

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
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(provider.getBackgroundImage()))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex, //indexبيقولي انا واقف علي انهو
            onTap: (index) {
              //=> give me the index that i taped on it
              selectedIndex = index;
              setState(() {
                // setState() => tell the widget to rebuild
              });
            },
            backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: AppLocalizations.of(context)!.alahadeth),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
