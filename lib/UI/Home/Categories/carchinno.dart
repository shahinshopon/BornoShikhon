import 'package:bornomalashikhon/UI/Home/Categories/carchinnodetails/carchinnodetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../allcolors.dart';
import '../../sizeconfig.dart';

class CarChinno extends StatefulWidget {
  @override
  _CarChinnoState createState() => _CarChinnoState();
}

class _CarChinnoState extends State<CarChinno> {
  List alphabets = ['া', 'ি', 'ী', 'ু', 'ূ', ' ৃ ', 'ে', 'ৈ', 'ো ', 'ৌ'];
  List example = [
    "আ কার",
    "ই কার",
    "ঈ কার",
    "উ কার",
    "ঊ কার",
    "ঋ কার",
    "এ কার",
    "ঐ কার",
    "ও কার",
    "ঔ কার"
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
                                builder: (context) => CarChinnoDetails(
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
