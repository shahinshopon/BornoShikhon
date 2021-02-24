import 'package:bornomalashikhon/UI/Home/Categories/sorobornodetails/sorobornodetails.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../allcolors.dart';
import '../../sizeconfig.dart';

class SoroBorno extends StatefulWidget {
  @override
  _SoroBornoState createState() => _SoroBornoState();
}

class _SoroBornoState extends State<SoroBorno> {


  MobileAdTargetingInfo targetingInfo;
  InterstitialAd myInterstitial;

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-7644770608554471~3072483416");
    targetingInfo = MobileAdTargetingInfo(
      keywords: <String>['pubg','app','shopping' 'game', 'beautiful apps','freefire','popular videos',],
      contentUrl: 'https://flutter.io',
      birthday: DateTime.now(),
      childDirected: false,
      designedForFamilies: false,
      gender: MobileAdGender.unknown, // or MobileAdGender.female, MobileAdGender.unknown


    );
    myInterstitial = InterstitialAd(
      // Replace the testAdUnitId with an ad unit id from the AdMob dash.
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads

      adUnitId: "ca-app-pub-7644770608554471/2732506405",
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    super.initState();
  }

  List alphabets = ['অ', 'আ', 'ই', 'ঈ', 'উ', 'ঊ', 'ঋ', 'এ', 'ঐ', 'ও', 'ঔ'];
  List example = [
    "অ তে অজগর",
    "আ তে আম",
    "ই তে ইঁদুর",
    "ঈ তে ঈগল ",
    "উ তে উট ",
    "ঊ তে ঊষা",
    "ঋ তে ঋষি",
    "এ তে একতারা",
    "ঐ তে ঐক্য",
    "ও তে ওজন",
    "ঔ তে ঔষধ"
  ];
  @override
  Widget build(BuildContext context) {
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
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
                                    builder: (context) => SoroBornoDetails(
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
