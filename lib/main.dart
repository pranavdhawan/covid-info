import 'dart:ui';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:earlycare/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BackGestureWidthTheme(

      backGestureWidth: BackGestureWidth.fraction(1 / 2),
      child: MaterialApp(
          title: 'Covid',
          theme: ThemeData(
            primaryColor: Colors.lightBlue[800],
            accentColor: Colors.cyan[600],
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.fuchsia:CupertinoPageTransitionsBuilder(),
              TargetPlatform.windows:CupertinoPageTransitionsBuilder(),
              TargetPlatform.linux:CupertinoPageTransitionsBuilder(),
              TargetPlatform.macOS:CupertinoPageTransitionsBuilder(),
            }),
            fontFamily: 'Raleway',
            textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 72.0,
              ),
              headline6: TextStyle(
                fontSize: 26.0,
              ),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
          home: menu()),
    );
  }
}
