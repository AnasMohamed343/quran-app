import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SebhaTabWidget extends StatefulWidget {
  @override
  State<SebhaTabWidget> createState() => _SebhaTabWidgetState();
}

class _SebhaTabWidgetState extends State<SebhaTabWidget> {
  int textCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset('assets/images/seb7a-icon.png'),
                Container(
                    //margin: EdgeInsets.only(bottom: 70),
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/images/head of seb7a.png')),
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            margin: EdgeInsets.only(top: 32, bottom: 10),
            child: Text(
              'عدد التسبيحات',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          // SizedBox(
          //   height: 100,
          // ),
          Container(
            width: 69,
            height: 81,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              color: Color(0xFF393949),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              textAlign: TextAlign.center,
              '$textCount',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                textCount++; // زيادة textCount بمقدار واحد
              });
            },
            onLongPress: () {
              setState(() {
                textCount = 0;
              });
            },
            child: Container(
              width: 137,
              height: 51,
              padding: EdgeInsets.only(top: 5),
              margin: EdgeInsets.only(top: 15, bottom: 90),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                textAlign: TextAlign.center,
                'سبحان الله',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
