import 'package:earlycare/size.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.png",), fit: BoxFit.contain)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          title: Text(
            'Supper',
            style: TextStyle(
                fontSize: 18.0, fontFamily: 'openSans', color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0)),
            Card(
              color: Colors.white.withOpacity(0.5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/ic1.png',
                      height: SizeConfig.blockSizeVertical * 7.7,
                      width: SizeConfig.blockSizeHorizontal * 7.7,
                    ),
                    Padding(padding: EdgeInsets.all(50.0)),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text(
                          'How does it spread?',
                          style: TextStyle(
                              fontSize: 37.0, fontFamily: 'nunito', color: Colors.black),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                               '•  The best way to prevent illness is to avoid being exposed to this virus.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                            ),
                              Text(
                                '•  There is currently no vaccine to prevent coronavirus disease 2019 (COVID-19).',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                              ),
                              Text(
                                '•  The virus is thought to spread mainly from person-to-person.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                              ),
                               Text(
                                  '•  The best way to prevent illness is to avoid being exposed to this virus.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                ),
                              Text(
                                '•  These droplets can land in the mouths or noses of people who are nearby or possibly be inhaled into the lungs.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                              ),
                            ]
                          ),
                        )
                      ]
                    )
                  ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Card(

              color: Colors.white.withOpacity(0.5),
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/hands.png',
                        height: SizeConfig.blockSizeVertical * 7.7,
                        width: SizeConfig.blockSizeHorizontal * 7.7,
                      ),
                      Padding(padding: EdgeInsets.all(50.0)),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              'Washing your hands',
                              style: TextStyle(
                                  fontSize: 37.0, fontFamily: 'nunito', color: Colors.black),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '•  Wash your hands often with soap and water for at least 20 seconds especially after you have ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),

                                    Text(
                                      '    been in a public place, or after blowing your nose, coughing, or sneezing. ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  If soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),

                                    Text(
                                      '    Cover all surfaces of your hands and rub them together until they feel dry.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Avoid touching your eyes, nose, and mouth with unwashed hands.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  It’s especially important to wash before eating or preparing food',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                  ]
                              ),
                            )
                          ]
                      )
                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Card(
              color: Colors.white.withOpacity(0.5),
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/dist.png',
                        height: SizeConfig.blockSizeVertical * 7.7,
                        width: SizeConfig.blockSizeHorizontal * 7.7,
                      ),
                      Padding(padding: EdgeInsets.all(50.0)),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              'Maintain your distance',
                              style: TextStyle(
                                  fontSize: 37.0, fontFamily: 'nunito', color: Colors.black),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '•  Inside your home avoid close contact with people who are sick',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Outside your home maintain 6 feet of distance between yourself and people who don’t live in your household.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Remember that some people without symptoms may be able to spread virus.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Avoid meeting up with people unless there is an absolute neccesity.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                  ]
                              ),
                            )
                          ]
                      )
                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Card(

              color: Colors.white.withOpacity(0.5),
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/mask.png',
                        height: SizeConfig.blockSizeVertical * 7.7,
                        width: SizeConfig.blockSizeHorizontal * 7.7,
                      ),
                      Padding(padding: EdgeInsets.all(50.0)),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              'Wear a mask',
                              style: TextStyle(
                                  fontSize: 37.0, fontFamily: 'nunito', color: Colors.black),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '•  You could spread COVID-19 to others even if you do not feel sick.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  The mask is meant to protect other people in case you are infected.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Do NOT use a mask meant for a healthcare worker. Currently, surgical masks and N95 respirators ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '    are critical supplies that should be reserved for healthcare workers and other first responders.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  The mask is not a substitute for social distancing. Continue to keep about 6 feet between yourself and others.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                  ]
                              ),
                            )
                          ]
                      )
                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Card(

              color: Colors.white.withOpacity(0.5),
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/clean.png',
                        height: SizeConfig.blockSizeVertical * 7.7,
                        width: SizeConfig.blockSizeHorizontal * 7.7,
                      ),
                      Padding(padding: EdgeInsets.all(50.0)),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              'Clean and sterilize',
                              style: TextStyle(
                                  fontSize: 37.0, fontFamily: 'nunito', color: Colors.black),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '•  If surfaces are dirty, clean them. Use detergent or soap and water prior to disinfection.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  Clean AND disinfect frequently touched surfaces daily. This includes tables, doorknobs,',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '    light switches, countertops, handles, desks, phones, keyboards, toilets, faucets, and sinks.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                    Text(
                                      '•  In case you buy something from outside, make sure to sanitize it before using.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 19.0, fontFamily: 'nunito', color: Colors.black),
                                    ),
                                  ]
                              ),
                            )
                          ]
                      )
                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            FloatingActionButton.extended(
              highlightElevation: 80,
              label: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              icon: Text(
                'WHO COVID-19 FAQs',
                style: TextStyle(
                    fontSize: 20.0, fontFamily: 'nunito', color: Colors.black),
              ),
                onPressed: () => launch('https://who.int/emergencies/diseases/novel-coronavirus-2019/question-and-answers-hub/'),
              backgroundColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(10.0)),
          ]),
        ),
      ),
    );
  }
}
