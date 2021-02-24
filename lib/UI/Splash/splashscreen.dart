import 'dart:async';

import 'package:bornomalashikhon/UI/Home/homepage.dart';
import 'package:bornomalashikhon/UI/allcolors.dart';
import 'package:bornomalashikhon/UI/allstring.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              StringData.title,
              style: TextStyle(
                color: ColorData.black,
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.screenheight * 0.06,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenheight * 0.02,
          ),
          CircularProgressIndicator(
            backgroundColor: ColorData.progresscolor,
          )
        ],
      ),
    );
  }
}
