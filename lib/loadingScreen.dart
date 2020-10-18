import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitPumpingHeart(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}

class delay extends StatefulWidget {
  int i;
  delay(int a) {
    i = a;
  }

  @override
  _delayState createState() => _delayState(i);
}

class _delayState extends State<delay> {
  bool voxt = false;
  int t2;

  _delayState(int x) {
    t2 = x;
    print(t2);
    check(t2);
  }

  int y;
  String f;

  void check(int h) {
    Random random = new Random();
    if (t2 == 1) {
      y = (random.nextInt(5)) + 1;
      f = 'first';
    }
    if (t2 == 2) {
      y = (random.nextInt(4)) + 1;
      f = 'second';
    }
    if(t2 == 3) {
      y = (random.nextInt(2)) + 1;
      f = 'third';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (c, s) => (s.connectionState != ConnectionState.done)
            ? Center(
                child: Scaffold(
                  backgroundColor: Color.fromRGBO(1, 2, 59, 1.0),
                  body: Column(children: <Widget>[
                    SizedBox(
                      height: 250,
                    ),
                    Center(
                      child: SpinKitPumpingHeart(
                        color: Colors.pink[200],
                        size: 100.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'Fetching your Daily Exercise 🏋️‍',
                        style: TextStyle(fontSize: 22.0, fontFamily: 'nunito', color: Colors.white),
                    )
                  ]),
                ),
              )
            : Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text('Your daily exercise is..', style: TextStyle(fontSize: 18.0, fontFamily: 'openSans', color: Colors.white)),
                  backgroundColor: Color.fromRGBO(0, 26, 8, 1.0),
                ),
                body: Center(
                  child: Image.asset('assets/$f/$y.PNG', fit: BoxFit.fitWidth ,)
                ),
              ));
  }
}
