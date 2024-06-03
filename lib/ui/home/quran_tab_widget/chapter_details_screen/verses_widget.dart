import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String verse;
  VersesWidget({required this.verse});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Text(verse,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.displaySmall),
    );
  }
}
