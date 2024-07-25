import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
                provider.changeAppLocal('en');
              },
              child: provider.currentLang == 'en'
                  ? getSelectedLang('English')
                  : getUnSelectedLang('English')),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.changeAppLocal('ar');
              },
              child: provider.currentLang == 'ar'
                  ? getSelectedLang('العربيه')
                  : getUnSelectedLang('العربيه'))
        ],
      ),
    );
  }

  Widget getSelectedLang(String selectedLang) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLang,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Icon(
          // size: 30,
          Icons.check,
          color: Theme.of(context).indicatorColor,
        )
      ],
    );
  }

  Widget getUnSelectedLang(String unSelectedLang) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          unSelectedLang,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
