import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth-model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-Details';
  @override
  Widget build(BuildContext context) {
    HadethItem args = ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main_bg.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
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
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
