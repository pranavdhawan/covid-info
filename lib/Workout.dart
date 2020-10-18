import 'package:flutter/material.dart';
import 'package:earlycare/size.dart';
import 'package:flutter/cupertino.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/bg.png",
              ),
              fit: BoxFit.contain)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          title: Text('Supper',
              style: TextStyle(
                  fontSize: 18.0, fontFamily: 'openSans', color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(4.0)),
                  GestureDetector(
                    child: Container(
                      height: SizeConfig.blockSizeVertical * 5,
                      width: SizeConfig.blockSizeHorizontal * 10,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red[500],
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Precautions',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'nunito',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onTap: () {
                      D2.showCustomDialog(context,
                          title: "Precautions for Exercise",
                          okBtnText: "Got It!",
                          okBtnFunction: () => Navigator.pop(context));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Padding(
                    padding: MediaQuery.of(context).viewInsets +
                        const EdgeInsets.symmetric(
                            horizontal: 200.0, vertical: 30.0),
                    child: Column(children: <Widget>[
                      Card(
                        color: Colors.white.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Text(
                              'The coronavirus that causes COVID-19 attacks the lungs and respiratory system, sometimes resulting in significant damage. COVID-19 often leads to pneumonia and even acute respiratory distress syndrome (ARDS), a severe lung injury. Recovering lung function is possible but can require therapy and exercises for months after the infection is treated.',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'nunito',
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 5,
                              width: SizeConfig.blockSizeHorizontal * 5,
                            ),
                            Text(
                              'Deep breathing exercises can  lessen feelings of anxiety and stress, which are common for someone who experienced severe symptoms or was admitted to a hospital. Sleep quality may also improve with these breathing exercises.Anyone can benefit from deep breathing techniques, but they play an especially important role in the COVID-19 recovery process. The exercises can be started at home during self-isolation and easily incorporated into your daily routine.',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'nunito',
                                color: Colors.black,
                              ),
                            ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical * 5,
                                  width: SizeConfig.blockSizeHorizontal * 5,
                                ),
                                Text(
                                  'When recovering from a respiratory illness like COVID-19, it’s important not to rush recovery. This deep breathing exercise is broken up into phases to take into account individual ability. Start with Phase 1, and only increase repetitions or move to the next phase when you can complete the exercise without feeling too out of breath.',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black,
                                  ),
                                ),
                          ]),
                        ),
                      )
                    ]),
                  ),                                 //info
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                      child: AlertDialog(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        title: Text(
                          'Phase 1: Deep Breathing While On Your Back',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 31.0, fontFamily: 'nunito', color: Colors.black),
                        ),
                        contentPadding: EdgeInsets.all(12),
                        content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: MediaQuery.of(context).viewInsets +
                                    const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 24.0),
                              ),
                              Text(
                                '1. Lie on your back and bend your knees so that the bottom of your feet are resting on the bed.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '2. Place your hands on top of your stomach or wrap them around the sides of your stomach.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '3. Close your lips and place your tongue on the roof of your mouth.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '4. Breathe in through the nose and pull air down into your stomach where your ',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '   hands are. Try to spread your fingers apart with your breath..',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '5. Slowly exhale your breath through the nose.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '6. Repeat deep breaths for one minute.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding:  MediaQuery.of(context).viewInsets +
                                    const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 10.0),
                                child: Image.asset('assets/g1.gif',
                                  alignment: Alignment.center,
                                  height: SizeConfig.blockSizeVertical * 35,
                                  width: SizeConfig.blockSizeHorizontal * 50,
                                ),
                              ),
                            ]),
                      )
                      ),//ex1
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                      child: AlertDialog(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        title: Text(
                          'Phase 2: Deep Breathing While on Your Stomach',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 31.0, fontFamily: 'nunito', color: Colors.black),
                        ),
                        contentPadding: EdgeInsets.all(12),
                        content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: MediaQuery.of(context).viewInsets +
                                    const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 24.0),
                              ),
                              Text(
                                '1. Lie on your stomach and rest your head on your hands to allow room to breathe.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '2. Close your lips and place your tongue on the roof of your mouth.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '3. Breathe in through your nose and pull air down into your stomach. Try',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '    to focus on your stomach pushing into the mattress as you breathe.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '4. Slowly exhale your breath through your nose.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '5. Slowly exhale your breath through your nose.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),

                              Image.asset('assets/g2.gif',
                                alignment: Alignment.center,
                                height: SizeConfig.blockSizeVertical * 35,
                                width: SizeConfig.blockSizeHorizontal * 50,
                              ),
                            ]),

                      )

                  ), //ex 2
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                      child: AlertDialog(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        title: Text(
                          'Phase 3: Deep Breathing While Sitting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 31.0, fontFamily: 'nunito', color: Colors.black),
                        ),
                        contentPadding: EdgeInsets.all(12),
                        content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: MediaQuery.of(context).viewInsets +
                                    const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 24.0),
                              ),
                              Text(
                                '1. Sit upright on the edge of a bed or in a sturdy chair.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '2. Place your hands around the sides of your stomach.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '3. Close lips and place your tongue on the roof of your mouth.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '4. Breathe in through your nose and pull air down into your stomach where your ',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '   hands are. Try to spread your fingers apart with your breath.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '5. Slowly exhale your breath through the nose.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '6. Repeat deep breaths for one minute.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Image.asset('assets/g3.gif',
                                alignment: Alignment.center,
                                height: SizeConfig.blockSizeVertical * 35,
                                width: SizeConfig.blockSizeHorizontal * 50,
                              ),
                            ]),

                      )

                  ), //ex 3
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                      child: AlertDialog(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        title: Text(
                          'Phase 4: Deep Breathing While Standing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 31.0, fontFamily: 'nunito', color: Colors.black),
                        ),
                        contentPadding: EdgeInsets.all(12),
                        content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: MediaQuery.of(context).viewInsets +
                                    const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 24.0),
                              ),
                              Text(
                                '1. Stand upright and place your hands around the sides of your stomach.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '2. Close your lips and place your tongue on the roof of your mouth..',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '3. Breathe in through your nose and pull air down into your stomach where your',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '   hands are. Try to spread your fingers apart with your breath.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),

                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '4. Place your hands on top of your stomach or wrap them around the sides of your stomach.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '5. Slowly exhale your breath through the nose.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '6. Repeat deep breaths for one minute.',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'nunito',
                                    color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 13,
                              ),

                            ]),

                      )

                  ), //ex 4
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class D2 {
  static D2 _instance = new D2.internal();

  D2.internal();

  factory D2() => _instance;

  static void showCustomDialog(BuildContext context,
      {@required String title,
      String okBtnText = "hhegregrbge",
      @required Function okBtnFunction}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 31.0, fontFamily: 'nunito', color: Colors.black),
            ),
            contentPadding: EdgeInsets.all(12),
            content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: MediaQuery.of(context).viewInsets +
                        const EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 24.0),
                  ),
                  Text(
                    '  Do not begin exercises, and contact your doctor, if:',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    ' • You have a fever',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    ' • You have any swelling in your legs.',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    ' • You have any chest pain or palpitations (“fluttering” of the heart in the chest).',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    ' • You have any shortness of breath or difficulty breathing while resting. ',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    '  STOP exercise immediately if you develop any dizzyness, or irregular heartbeat',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'nunito',
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                ]),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  okBtnText,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: okBtnFunction,
              ),
            ],
          );
        });
  }
}

class tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        'Safety Guidelines',
        style: TextStyle(
            fontSize: 22.0, fontFamily: 'nunito', color: Colors.black),
      ),
      content: Column(children: <Widget>[
        // Padding(
        //   padding: MediaQuery.of(context).viewInsets +
        //       const EdgeInsets.symmetric(horizontal: 0.0, vertical: 24.0),
        // ),
        Text(
          ' Do not begin exercises, and contact your doctor, if:',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),

        Text(
          ' • You have a fever',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),
        Text(
          ' • You have any swelling in your legs.',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),
        Text(
          ' • You have any chest pain or palpitations (“fluttering” of the heart in the chest).',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),
        Text(
          ' • You have any shortness of breath or difficulty breathing while resting. ',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),
        Text(
          ' • STOP exercise immediately if you develop any dizzyness, or irregular heartbeat',
          style: TextStyle(
              fontSize: 16.0, fontFamily: 'nunito', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 9.5,
        ),
      ]),
      actions: <Widget>[
        FlatButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            print('OK pressed');
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

//
// class D1 {
//   static D1 _instance = new D1.internal();
//
//   D1.internal();
//
//   factory D1() => _instance;
//
//   static void showCustomDialog(BuildContext context,
//       {@required String title,
//       String okBtnText = "hhegregrbge",
//       @required Function okBtnFunction}) {
//     showDialog(
//         context: context,
//         builder: (_) {
//           return AlertDialog(
//             backgroundColor: Color.fromRGBO(52, 3, 56, 1.0),
//             title: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 18.0, fontFamily: 'nunito', color: Colors.white),
//             ),
//             content: Text(
//               "If you think of exercise solely as a way to fit into a smaller pair of pants, you may need to shift your perspective (and priorities) now that you’re pregnant."
//               "According to the ACOG, exercising during pregnancy can lead to a lower incidence of:"
//               " Preterm Birth and "
//               "Gestational Diabetes or Hypertensive Disorders. "
//               "It's an excellent way to improve Postpartum Recovery",
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                   fontSize: 19.0, fontFamily: 'nunito', color: Colors.white),
//             ),
//             actions: <Widget>[
//               FlatButton(
//                 child: Text(
//                   okBtnText,
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: okBtnFunction,
//               ),
//             ],
//           );
//         });
//   }
// }
