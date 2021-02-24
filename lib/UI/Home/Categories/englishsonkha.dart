import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../allcolors.dart';
import '../../sizeconfig.dart';
import 'englishshonkhadetails/englishshonkhadetails.dart';

class EnglishSonkha extends StatefulWidget {
  @override
  _EnglishSonkhaState createState() => _EnglishSonkhaState();
}

class _EnglishSonkhaState extends State<EnglishSonkha> {
  List alphabets = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',

  ];
  List example = [

    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen",
    "Twenty",
    "Twenty One",
    "Twenty Two",
    "Twenty Three",
    "Twenty Four",
    "Twenty Five",
    "Twenty Six",
    "Twenty Seven",
    "Twenty Eight",
    "Twenty Nine",
    "Thirty",
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
                        color: ColorData.progresscolor,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => EnglishShonkhaDetails(
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
