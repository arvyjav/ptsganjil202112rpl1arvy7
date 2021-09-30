import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'konek.dart';

class Deep extends StatefulWidget {
  final AddModel konek;

  Deep(this.konek);

  @override
  _DeepState createState() => _DeepState();
}

class _DeepState extends State<Deep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6751B5),
      appBar: AppBar(
        backgroundColor: Color(0xFF6751B5),
        title: Text(widget.konek.strCategory),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_call), onPressed: () => {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () => {},
      ),

      body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("${widget.konek.strCategoryThumb}"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(0, -4),
                      blurRadius: 8
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 30,
                        right: 30
                      ),

                    child: Row(
                      children: [
                        Expanded(
                          child: Text(widget.konek.strCategory, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontFamily: "Stanberry",),
                          ),
                        ),

                      ],
                    ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20,
                          left: 30,
                          right: 30
                      ),
                    ),
                    Divider(),
                    Text(widget.konek.strCategoryDescription, style: TextStyle(fontSize: 15, fontFamily: "Stanberry", color: CupertinoColors.systemGrey2))

                  ],
                ),
              )
            )
      ]),
    );
  }
}