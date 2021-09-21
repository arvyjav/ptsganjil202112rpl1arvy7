import 'package:flutter/material.dart';
import 'dart:async';
import 'MainMenu.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => NavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'android/app/src/main/res/drawable/house.png',
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            // Figma Flutter Generator Group13Widget - GROUP
            Container(
                width: 360,
                height: 100,
                child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: 50,
                          left: 0,
                          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(184, 160, 160, 1),
                              fontFamily: 'Rasa',
                              fontSize: 20,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),)
                      ),Positioned(
                          top: 0,
                          left: 73,
                          child: Text('The Restaurant ', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Rasa',
                              fontSize: 40,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w600,
                              height: 1
                          ),)
                      ),
                    ]
                ),
            ),
          ],
          
        ),
      ),
    );
  }
}