import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/settings_tab_widget/theme/theme_bottom-sheet.dart';

import 'language/language_bottom-sheet.dart';

class SettingsTabWidget extends StatefulWidget {
  const SettingsTabWidget({super.key});

  @override
  State<SettingsTabWidget> createState() => _SettingsTabWidgetState();
}

class _SettingsTabWidgetState extends State<SettingsTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Theme',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Text(
                  'Light',
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Language',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        /*isDismissible: false,*/ builder: (context) => ThemeBottomSheet(),
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor);
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(32), topLeft: Radius.circular(32))),
    );
  }
}
