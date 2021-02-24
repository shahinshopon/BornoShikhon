import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../allcolors.dart';
import '../../sizeconfig.dart';
import 'ganitikshonkhadetails/ganitikshonkhadetails.dart';

class GanitikSonkha extends StatefulWidget {
  @override
  _GanitikSonkhaState createState() => _GanitikSonkhaState();
}

class _GanitikSonkhaState extends State<GanitikSonkha> {
  List alphabets = [
    '১',
    '২',
    '৩',
    '৪',
    '৫',
    '৬',
    '৭',
    '৮',
    '৯',
    '১০',
    '১১',
    '১২',
    '১৩',
    '১৪',
    '১৫',
    '১৬',
    '১৭',
    '১৮',
    '১৯',
    '২০',
    '২১',
    '২২',
    '২৩',
    '২৪',
    '২৫',
    '২৬',
    '২৭',
    '২৮',
    '২৯',
    '৩০'
  ];
  List example = [
    "এক",
    "দুই",
    "তিন",
    "চার",
    "পাঁচ",
    "ছয়",
    "সাত",
    "আট",
    "নয়",
    "দশ",
    "এগারো",
    "বার",
    "তেরো",
    "চৌদ্দ",
    "পনেরো",
    "ষোল",
    "সতেরো",
    "আঠারো",
    "উনিশ",
    "বিশ",
    "একুশ",
    "বাইশ",
    "তেইশ",
    "চব্বিশ",
    "পঁচিশ",
    "ছাব্বিশ",
    "সাতাশ",
    "আটাশ",
    "ঊনত্রিশ",
    "ত্রিশ"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: alphabets.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(SizeConfig.screenheight * 0.01),
              child: GridTile(
                child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Material(
                        color: Colors.green,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => GanitikShonkhaDetails(
                                  data: alphabets[index],
                                  index: index,
                                  details: example[index],
                                ),
                              ),
                            );
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              alphabets[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.screenheight * 0.08),
                            ),
                          ),
                        ))),
              ),
            );
          },
        ),
      ),
    );
  }
}
