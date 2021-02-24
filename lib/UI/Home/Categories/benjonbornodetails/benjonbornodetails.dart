import 'dart:io';
import 'package:bornomalashikhon/UI/allcolors.dart';
import 'package:bornomalashikhon/UI/sizeconfig.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_draw/flutter_draw.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BenjonBornoDetails extends StatefulWidget {
  var data;
  var details;
  int index;
  BenjonBornoDetails({this.data, this.index, this.details});
  @override
  _BenjonBornoDetailsState createState() => _BenjonBornoDetailsState();
}

class _BenjonBornoDetailsState extends State<BenjonBornoDetails> {



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

      adUnitId: "ca-app-pub-7644770608554471/1052786740",
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    super.initState();
  }

  File _drawImage;

  Future<void> getDrawing()  {
    final getDraw =   Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return HomePage();
        }
    )).then((getDraw){
      if(getDraw != null){
        setState(() {
          _drawImage =  getDraw;
        });
      }
    }).catchError((er){print(er);});

  }

  FlutterTts flutterTts = FlutterTts();
  double rate = 0.5;
  bool isPlaying = false;
  Future _speak(String text) async {
    await flutterTts.setLanguage("bn-BD");
    await flutterTts.setPitch(1.0);
    //await flutterTts.setVoice("bn-BD-x-sfg#male_1-local");
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setVolume(1.0);
    if (text != null && text.isNotEmpty) {
      var result = await flutterTts.speak(text);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }


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
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(left: SizeConfig.screenheight*0.01,right: SizeConfig.screenheight*0.01,top: SizeConfig.screenheight*0.01),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Container(
                      width: SizeConfig.screenwidth,

                      child: Center(
                          child: Text(
                        widget.data,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenheight * 0.15),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Container(
                      width: SizeConfig.screenwidth,

                      child: Center(
                        child: Text(
                          widget.details,
                          style: TextStyle(
                            color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenheight * 0.065),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("ছবি লোড করতে ইন্টারনেট অন করুন",style: TextStyle(color: Colors.green),),
                Expanded(
                  flex: 2,
                  child: Card(
                    child: Container(
                      width: SizeConfig.screenwidth,

                      child: GetImage(context),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: SizeConfig.screenwidth,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(

                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorData.progresscolor,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(SizeConfig.screenwidth*0.09))
                            ),
                            height: SizeConfig.screenheight*0.13,
                            width: SizeConfig.screenwidth/2.2,

                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: <Widget>[
                                  Icon(Icons.volume_up,color: Colors.white,size: SizeConfig.screenheight*0.04,),
                                  SizedBox(width: SizeConfig.screenheight*0.01,),
                                  Text('শুনুন',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: SizeConfig.screenheight*0.04),)
                                ],
                              ),
                            ),
                          ),
                          onTap: (){

                            setState(() {
                              _speak(widget.details);

                            });



                          },
                        ),
                        GestureDetector(
                          onTap: (){
                            getDrawing();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorData.progresscolor,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(SizeConfig.screenwidth*0.09))
                            ),
                            height: SizeConfig.screenheight*0.13,
                            width: SizeConfig.screenwidth/2.2,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: <Widget>[
                                  Icon(Icons.create,color: Colors.white,size: SizeConfig.screenheight*0.04,),
                                  SizedBox(width: SizeConfig.screenheight*0.01,),
                                  Text('লিখুন',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: SizeConfig.screenheight*0.04),)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),


                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget GetImage(BuildContext context) {
    return Container(

      child: new StreamBuilder(
          stream: Firestore.instance
              .collection('benjonborno')
              .document(widget.index.toString())
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator(backgroundColor: ColorData.progresscolor,),);
            }

            var userDocument = snapshot.data;
            return Container(
              height: 100,
              width: 200,
              child: userDocument == null
                  ? Text("ছবি লোড হচ্ছে ...")
                  : Image.network(
                userDocument["img"],fit: BoxFit.fill,
              ),
            );



          }),
    );
  }
}
