import 'package:bornomalashikhon/UI/Home/Categories/englishalphatetdetails/englishapphabetdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../sizeconfig.dart';

class EnglishAlphabetLarge extends StatefulWidget {
  @override
  _EnglishAlphabetLargeState createState() => _EnglishAlphabetLargeState();
}

class _EnglishAlphabetLargeState extends State<EnglishAlphabetLarge> {
  List alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  List example = [
    "A for Apple",
    "B for Ball",
    "C for Cat",
    "D for Dog",
    "E for Elephant",
    "F for Frog",
    "G for Goat",
    "H for Hut",
    "I for Ice-cream",
    "J for jellyfish",
    "K for Kite",
    "L for Lion",
    "M for Mango",
    "N for Nest",
    "O for Orange",
    "P for Police",
    "Q for Queen",
    "R for Rat",
    "S for Sun",
    "T for Tiger",
    "U for Umbrella",
    "V for Van",
    "W for Window",
    "X for X-ray",
    "Y for Yo-yo",
    "Z for Zebra"
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
                        color: Colors.blue,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        EnglishAlphabetDetails(
                                          data: alphabets[index],
                                          index: index,
                                          details: example[index],
                                        )));
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
