import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_details_screen/chapter_details_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String chapterTitle;
  int index;
  ChapterTitleWidget({required this.chapterTitle, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //to make any item => clickable
      onTap: () {
        Navigator.pushNamed(
          context,
          ChapterDetailsScreen.routeName,
          arguments: ChapterDetailsArgs(
              chapterTitle: chapterTitle,
              index:
                  index), //upcasting =>Turned from child(class) to parent(parent)
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        child: Text(
          chapterTitle,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ChapterDetailsArgs {
  String chapterTitle;
  int index;
  ChapterDetailsArgs({required this.chapterTitle, required this.index});
}
