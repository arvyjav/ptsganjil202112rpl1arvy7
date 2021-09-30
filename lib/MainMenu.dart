import 'package:flutter/material.dart';
import 'House.dart';
import 'Resto.dart';
import 'Addition.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Restaurant', style: TextStyle( fontFamily: "Kamino", color: Colors.black),),
          centerTitle: true,
          bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home, color: Colors.black)),
                Tab(icon: Icon(Icons.fastfood, color: Colors.black)),
                Tab(icon: Icon(Icons.restaurant_menu, color: Colors.black)),
              ]
          ),
        ),
        body: TabBarView(
          children: <Widget> [
            Rumah(),
            Resto(),
            Additional(),

          ],
        ),
      )

  );
}