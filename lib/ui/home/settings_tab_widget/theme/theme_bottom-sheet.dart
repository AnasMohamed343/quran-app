import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          SizedBox(
            height: 15,
          ),
          getUnSelectedItem('Dark'),
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
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Icon(
          size: 30,
          Icons.check,
          color: Theme.of(context).iconTheme.color,
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
