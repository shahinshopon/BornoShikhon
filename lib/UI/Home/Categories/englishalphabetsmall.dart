import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../sizeconfig.dart';
import 'englishalphatetdetails/englishapphabetdetails.dart';

class EnglishAlphabetSmall extends StatefulWidget {
  @override
  _EnglishAlphabetSmallState createState() => _EnglishAlphabetSmallState();
}

class _EnglishAlphabetSmallState extends State<EnglishAlphabetSmall> {
  List alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  List example = [
    "a for Apple",
    "b for Ball",
    "c for Cat",
    "d for Dog",
    "e for Elephant",
    "f for Frog",
    "g for Goat",
    "h for Hut",
    "i for Ice-cream",
    "j for jellyfish",
    "k for Kite",
    "l for Lion",
    "m for Mango",
    "n for Nest",
    "o for Orange",
    "p for Police",
    "q for Queen",
    "r for Rat",
    "s for Sun",
    "t for Tiger",
    "u for Umbrella",
    "v for Van",
    "w for Window",
    "x for X-ray",
    "y for Yo-yo",
    "z for Zebra"
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
