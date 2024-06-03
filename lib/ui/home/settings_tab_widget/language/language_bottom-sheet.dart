import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedLang('English'),
          SizedBox(
            height: 15,
          ),
          getUnSelectedLang('العربيه')
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
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Icon(
          // size: 30,
          Icons.check,
          color: Theme.of(context).iconTheme.color,
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
