import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth-model.dart';
import 'package:islami_app/ui/home/ahadeth_tab_widget/hadeth_details/hadeth_details_screen.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethItem hadethItem;
  HadethTitleWidget({required this.hadethItem});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadethItem);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(hadethItem.title,
            style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
