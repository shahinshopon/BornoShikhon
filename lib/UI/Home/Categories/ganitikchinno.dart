import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../allcolors.dart';
import '../../sizeconfig.dart';
import 'ganitikchinnodetails/ganitikchinnodetails.dart';

class GanitikChinno extends StatefulWidget {
  @override
  _GanitikChinnoState createState() => _GanitikChinnoState();
}

class _GanitikChinnoState extends State<GanitikChinno> {
  List alphabets = ['+', '-', 'x', '÷', '()', '%', '.'];
  List example = ["যোগ", "বিয়োগ", "গুন", "ভাগ", "বন্ধনী", "শতকরা", "দশমিক"];
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
                                builder: (context) => GanitikChinnoDetails(
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
