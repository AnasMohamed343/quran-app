import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeApplicationTheme(ThemeMode.light);
              },
              child: provider.currentTheme == ThemeMode.light
                  ? getSelectedItem('Light')
                  : getUnSelectedItem('Light')),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.changeApplicationTheme(ThemeMode.dark);
              },
              child: provider.currentTheme == ThemeMode.dark
                  ? getSelectedItem('Dark')
                  : getUnSelectedItem('Dark')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Icon(
          size: 30,
          Icons.check,
          color: Theme.of(context).indicatorColor,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String unSelectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
