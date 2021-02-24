import 'dart:async';
import 'package:bornomalashikhon/UI/CustomWidget/custombutton.dart';
import 'package:bornomalashikhon/UI/Home/Categories/carchinno.dart';
import 'package:bornomalashikhon/UI/Home/Categories/ganitiksonkha.dart';
import 'package:bornomalashikhon/UI/Home/Categories/soroborno.dart';
import 'package:bornomalashikhon/UI/allcolors.dart';
import 'package:bornomalashikhon/UI/allstring.dart';
import 'package:bornomalashikhon/UI/sizeconfig.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Categories/benjonborno.dart';
import 'Categories/englishalphabet.dart';
import 'Categories/englishsonkha.dart';
import 'Categories/ganitikchinno.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    // Android emulators are considered test devices
  );
  BannerAd myBanner = BannerAd(
    adUnitId: "ca-app-pub-7644770608554471/6927095805",
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );
  BannerAd _bannerAd;
  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
        appId: BannerAd.testAdUnitId
    );
    _bannerAd = myBanner..load()..show(anchorType: AnchorType.bottom);
    Timer(Duration(seconds: 20), (){
      if (_bannerAd != null) {
         _bannerAd.isLoaded();
         _bannerAd.dispose();
        _bannerAd = null;
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorData.progresscolor,
        elevation: 0,
        title: Text(
          StringData.title,
        ),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  child: CustomButton(StringData.category1, () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => SoroBorno()));
                  },
                      SizeConfig.screenheight * 0.06,
                      BorderRadius.only(
                          bottomLeft: Radius.circular(
                            30,
                          ),
                          bottomRight: Radius.circular(30))),
                )),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Material(
                        color: Colors.red,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => BenjonBorno()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category2,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Material(
                        color: Colors.red,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => CarChinno()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category3,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenheight * 0.008,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Material(
                        color: Colors.green,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => GanitikSonkha()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category4,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Material(
                        color: Colors.green,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => GanitikChinno()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category5,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenheight * 0.008,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Material(
                        color: Colors.blue,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => EnglishAlphabet()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category6,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                  Container(
                    child: Material(
                        borderRadius: BorderRadius.only(),
                        color: Colors.blue,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => EnglishSonkha()));
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Text(
                              StringData.category7,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenheight * 0.032,
                              ),
                            ),
                          ),
                        )),
                    width: SizeConfig.screenwidth / 2.03,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
