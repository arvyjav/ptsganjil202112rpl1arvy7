import 'package:flutter/material.dart';


class Rumah extends StatefulWidget {
  const Rumah({Key? key}) : super(key: key);

  @override
  _RumahState createState() => _RumahState();
}

class _RumahState extends State<Rumah> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group12Widget - GROUP

    return Container(
        width: 360,
        height: 322,
        child: Center(
            child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 22,
                      left: 44,
                      child: Container(
                          width: 282,
                          height: 191,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0,4),
                                blurRadius: 4
                            )],
                            color : Color.fromRGBO(233, 211, 211, 1),
                          )
                      )
                  ),Positioned(
                      top: 11,
                      left: 44,
                      child: Container(
                          width: 282,
                          height: 191,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0,4),
                                blurRadius: 4
                            )],
                            color : Color.fromRGBO(246, 223, 223, 1),
                          )
                      )
                  ),Positioned(
                      top: 0,
                      left: 44,
                      child: Container(
                          width: 282,
                          height: 191,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0,4),
                                blurRadius: 4
                            )],
                            color : Color.fromRGBO(255, 255, 255, 1),
                          )
                      )
                  ),Positioned(
                      top: 228,
                      left: 44,
                      child: Text('Welcome, Home', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Magra',
                          fontSize: 27,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                  ),Positioned(
                      top: 22,
                      left: 82,
                      child: Container(
                          width: 207,
                          height: 169,
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('android/app/src/main/res/drawable/fast-food.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      )
                  ),Positioned(
                      top: 272,
                      left: 0,
                      child: Text('        Lorem Ipsum is simply dummy text', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(184, 160, 160, 1),
                          fontFamily: 'Rasa',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                ]
            )
       ),

    );
  }
}


