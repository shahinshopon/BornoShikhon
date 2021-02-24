import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../sizeconfig.dart';
import 'benjonbornodetails/benjonbornodetails.dart';

class BenjonBorno extends StatefulWidget {
  @override
  _BenjonBornoState createState() => _BenjonBornoState();
}

class _BenjonBornoState extends State<BenjonBorno> {
  List alphabets = [
    'ক',
    'খ',
    'গ',
    'ঘ',
    'ঙ',
    'চ',
    'ছ',
    'জ',
    'ঝ',
    'ঞ',
    'ট',
    'ঠ',
    'ড',
    'ঢ',
    'ণ',
    'ত',
    'থ',
    'দ',
    'ধ',
    'ন',
    'প',
    'ফ',
    'ব',
    'ভ',
    'ম',
    'য',
    'র',
    'ল',
    'শ',
    'ষ',
    'স',
    'হ',
    'ড়',
    'ঢ়',
    'য়',
    'ৎ',
    'ং',
    'ঃ',
    'ঁ',

  ];
  List example = [
    "ক তে কাকাতুয়া",
    "খ তে খেঁকশিয়াল",
    "গ তে গরু",
    " ঘ তে ঘুঘু",
    "ঙ তে ব্যাঙ ",
    "চ তে চিতাবাঘ",
    "ছ তে ছাগল",
    "জ তে জাহাজ",
    "ঝ তে ঝাড়ু",
    "ঞ তে মিঞাও",
    "ট তে টিয়াপাখি",
    "ঠ তে ঠেলাগাড়ি",
    "ড তে ডিম",
    "ঢ তে ঢোল",
    "ণ তে হরিণ",
    "ত তে তিমি",
    "থ তে থালা",
    "দ তে দোয়েল",
    "ধ তে ধান",
    "ন তে নদী",
    "প তে পাখি",
    "ফ তে ফুল",
    "ব তে বাঘ",
    "ভ তে ভালুক",
    "ম তে ময়ূর",
    "য তে যব",
    "র তে রাজঁহাস",
    "ল তে লাটিম",
    "শ তে শাপলা",
    "ষ তে ষাঁড়",
    "স তে সিংহ",
    "হ তে হাতি",
    "ড় তে গাড়ি",
    "ঢ় তে আষাঢ়",
    "য় তে পায়রা",
    "ৎ তে মৎস",
    "অনুস্বার তে চিংড়ি",
    "বিসর্গ তে দুঃখ ",
    "চন্দ্রবিন্দু তে চাঁদ"
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
                        color: Colors.red,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => BenjonBornoDetails(
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
