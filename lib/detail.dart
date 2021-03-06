import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food.dart';


class FoodDetail extends StatefulWidget {
  final FoodModel food;

  FoodDetail(this.food);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF6751B5),
      appBar: AppBar(
        backgroundColor: Color(0xFF6751B5),
        title: Text(widget.food.strCategory),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.anchor), onPressed: () => {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.description),
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
                  image: NetworkImage("${widget.food.strMealThumb}"),
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
                          child: Text(widget.food.strMeal, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontFamily: "Stanberry",),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.menu_book, color: Colors.orange, size: 25),
                            SizedBox(width: 5),
                            Text(widget.food.idMeal.toString(), style: TextStyle(fontSize: 20, fontFamily: "Stanberry",))
                          ],
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
                      child: Row(
                        children: [
                          Text('${widget.food.strArea}', style: TextStyle(fontSize: 21, fontFamily: "Stanberry",)),
                        ],
                      ),
                    ),

                    Divider(),
                    Text(widget.food.strInstructions, style: TextStyle(fontSize: 15, fontFamily: "Stanberry", color: CupertinoColors.activeGreen))

                  ],
                ),
              )
            )
      ]),
    );
  }
}