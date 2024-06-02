import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth-title-widget.dart';

import 'hadeth-model.dart';

class AhadethTabWidget extends StatefulWidget {
  @override
  State<AhadethTabWidget> createState() => _AhadethTabWidgetState();
}

class _AhadethTabWidgetState extends State<AhadethTabWidget> {
  List<HadethItem> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset("assets/images/ahadeth-icon.png")),
          Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 66),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2))),
              child: Text(
                'Ahadeth',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
          Expanded(
              flex: 3,
              child: allAhadeth.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) =>
                          HadethTitleWidget(hadethItem: allAhadeth[index]),
                      separatorBuilder: (context, index) => Container(
                            color: Theme.of(context).primaryColor,
                            width: double.infinity,
                            height: 2,
                            margin: EdgeInsets.symmetric(horizontal: 66),
                          ),
                      itemCount: allAhadeth.length))
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList =
        fileContent.trim().split('#'); //trim() => to delete the white spaces
    for (int i = 0; i < ahadethList.length; i++) {
      String singleHadeth = ahadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');

      HadethItem h = HadethItem(title: hadethTitle, content: hadethContent);
      allAhadeth.add(h);
    }
    setState(() {});
  }
}
