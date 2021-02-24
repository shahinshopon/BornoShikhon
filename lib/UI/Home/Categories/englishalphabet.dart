import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../sizeconfig.dart';
import 'englishalphabetbig.dart';
import 'englishalphabetsmall.dart';

class EnglishAlphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(flex: 1,child: Container(
                child: Material(

                    color: Colors.blue,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>EnglishAlphabetLarge()));
                      },
                      splashColor: Colors.white,
                      child: Center(
                        child: Text(
                          "বড় হাতের ইংরেজী অক্ষর",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenheight * 0.04,
                          ),
                        ),
                      ),
                    )),
              ),),
              SizedBox(height: 20,),
              Expanded(flex: 1,child: Container(
                child: Material(

                    color: Colors.blue,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>EnglishAlphabetSmall()));
                      },
                      splashColor: Colors.white,
                      child: Center(
                        child: Text(
                          "ছোট হাতের ইংরেজী অক্ষর",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenheight * 0.04,
                          ),
                        ),
                      ),
                    )),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
