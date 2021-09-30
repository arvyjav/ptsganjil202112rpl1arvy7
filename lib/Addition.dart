import 'package:flutter/material.dart';
import 'konek.dart';
import 'package:http/http.dart';
import 'deep.dart';
import 'dart:convert';

class Additional extends StatefulWidget {
  Additional({Key? key}) : super(key: key);

  @override
  _AdditionalState createState() => _AdditionalState();
}

class _AdditionalState extends State<Additional> {
  late List<AddModel> list = [];
  late List<dynamic> data;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchKonek();
  }

  Future<void> fetchKonek() async {
    setState(() {
      isLoading = true;
    });

    final response = await get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/categories.php'));

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var res = jsonDecode(response.body);
      setState(() {
        data = res['categories'];
        for (int i = 0; i < data.length; i++) {
          list.add(new AddModel(
            data[i]['strCategory'],
            data[i]['strCategoryThumb'],
            data[i]['strCategoryDescription'],
            ));
        }
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Pict');
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

  Widget buildList(List<AddModel> list) {
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
                  return Deep(list[index]);
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
                              image: NetworkImage("${list[index].strCategoryThumb}"))),

                      child: Center(
                        child: Text('${list[index].strCategory}',style: TextStyle(
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

