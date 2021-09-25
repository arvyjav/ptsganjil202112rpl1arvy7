// ignore: file_names
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'food.dart';
import 'dart:convert';
import 'detail.dart';

class Resto extends StatefulWidget {
  const Resto({Key? key}) : super(key: key);

  @override
  _RestoState createState() => _RestoState();
}

class _RestoState extends State<Resto> {
  late List<FoodModel> list = [];
  late List<dynamic> data;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchFood();
  }

  Future<void> fetchFood() async {
    setState(() {
      isLoading = true;
    });

    final response = await get(Uri.parse(
        'https://restaurant-api.dicoding.dev/list'));

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var res = jsonDecode(response.body);
      setState(() {
        data = res['restaurants'];
        for (int i = 0; i < data.length; i++) {
          list.add(new FoodModel(
            data[i]['name'],
            data[i]['description'],
            data[i]['pictureId'],
            data[i]['city'],
            data[i]['rating'],));
        }
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load foods');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9354B9),

      body: isLoading
          ? Center(
          child: CircularProgressIndicator(color: Colors.black,))
          : SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildList(list)
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget buildList(List<FoodModel> list) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          child: OutlinedButton(
            onPressed: () {},
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FoodDetail(list[index]);
                }));
              },
              child: Column(
                children: [
                  Card(
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://restaurant-api.dicoding.dev/images/small/${list[index].pictureId}"))),

                      child: Center(
                        child: Text('${list[index].name}',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Anya",
                            fontSize: 30)),

                      ),

                    ),
                    margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: list.length,
    );
  }
}
