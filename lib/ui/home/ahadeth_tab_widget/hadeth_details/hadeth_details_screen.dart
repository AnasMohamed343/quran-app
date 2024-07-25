import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth-model.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-Details';
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    HadethItem args = ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(provider.getBackgroundImage()))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(18),
          color: Theme.of(context).cardTheme.color,
          child: Container(
            alignment: Alignment
                .center, //the card well be the same size in all cases(-if the text was mini or more)
            padding: EdgeInsets.all(18),
            child: SingleChildScrollView(
              //to make the Text to scroll, but if i made it on the Card => the Card well scroll but the Text not
              child: Text(
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                args.content,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
