import 'package:earlycare/Workout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'diet.dart';
import 'package:earlycare/hover_extensions.dart';

class menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _menuState();
  }
}

class _menuState extends State<menu> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0,0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Theme(
        //   data: Theme.of(context).copyWith(
        //     canvasColor: Colors.transparent.withOpacity(0.8),
        //   ),
        // ),
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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png",), fit: BoxFit.contain)),

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(padding: EdgeInsets.all(12.0)), //info
                Center(
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(25.0)),
                          Image.asset(
                            'assets/dist.png',
                            height: 77,
                            width: 77,
                          ),
                          Padding(padding: EdgeInsets.all(50.0)),
                          Text(
                            'Coronavirus Guidelines',
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'nunito',
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => diet()),
                      );
                    },
                    onHover: (value){
                      print(value);
                      if(value){
                        setState((){
                          elevation = 20.0;
                          scale = 2.0;
                          translate = Offset(20,20);
                        });
                      }else{
                        setState((){
                          elevation = 4.0;
                          scale = 1.0;
                          translate = Offset(0,0);
                        });
                      }
                    },
                  ).showCursorOnHover,
                ),

                Padding(padding: EdgeInsets.all(12.0)), //link 1
                Center(
                  child: InkWell(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Covid Predictor',
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontFamily: 'nunito',
                                  color: Colors.black),
                            ),
                            Padding(padding: EdgeInsets.all(50.0)),
                            Image.asset(
                              'assets/d.png',
                              height: 77,
                              width: 77,
                            ),
                            Padding(padding: EdgeInsets.all(25.0)),
                          ],
                        ),
                      ),
                      onHover: (value){
                        print(value);
                        if(value){
                          setState((){
                            elevation = 20.0;
                            scale = 2.0;
                            translate = Offset(20,20);
                          });
                        }else{
                          setState((){
                            elevation = 4.0;
                            scale = 1.0;
                            translate = Offset(0,0);
                          });
                        }
                      },
                      onTap: () => null
                  ).showCursorOnHover,
                ), //water

                Padding(padding: EdgeInsets.all(12.0)), //link 2
                Center(
                  child: InkWell(
                      onTap: () =>null,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(25.0)),
                          Image.asset(
                            'assets/w.png',
                            height: 77,
                            width: 77,
                          ),
                          Padding(padding: EdgeInsets.all(50.0)),
                          Text(
                            'Community',
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'nunito',
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(12.0)), //exercises
                Center(
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Text(
                            ' Exercises',
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'nunito',
                                color: Colors.black),
                          ),
                          Padding(padding: EdgeInsets.all(50.0)),
                          Image.asset(
                            'assets/ex.png',
                            height: 77,
                            width: 77,
                          ),
                          Padding(padding: EdgeInsets.all(25.0)),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Workout()),
                      );
                    },
                    onHover: (value){
                      print(value);
                      if(value){
                        setState((){
                          elevation = 20.0;
                          scale = 2.0;
                          translate = Offset(20,20);
                        });
                      }else{
                        setState((){
                          elevation = 4.0;
                          scale = 1.0;
                          translate = Offset(0,0);
                        });
                      }
                    },
                  ).showCursorOnHover,
                ),
              ]
          ),
        ),
      ),
    );
  }
}
