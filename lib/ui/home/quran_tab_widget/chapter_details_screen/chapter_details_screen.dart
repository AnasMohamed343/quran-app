import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_details_screen/verses_widget.dart';
import 'package:islami_app/ui/home/quran_tab_widget/chapter_name_widget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Chapter-Details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args = ModalRoute.of(context)?.settings.arguments
        as ChapterDetailsArgs; // down cast the arguments to the correct type

    if (verses.isEmpty) readFile(args.index);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main_bg.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.chapterTitle),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) =>
                    VersesWidget(verse: verses[index]),
                separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 1,
                    ),
                itemCount: verses.length),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    // i used async and await here because loadString() function returns => Future
    // so i used async and await to wait for the file to be loaded and then i can use it
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
