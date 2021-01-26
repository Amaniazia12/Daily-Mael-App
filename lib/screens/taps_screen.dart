//import 'package:daily_mael/models/Category.dart';
import './favorites_Screen.dart';
import './Categories_screen.dart';
import 'package:daily_mael/screens/Categories_screen.dart';
import 'package:flutter/material.dart';
class Taps_screen extends StatefulWidget {
  @override
  _Taps_screenState createState() => _Taps_screenState();
}

class _Taps_screenState extends State<Taps_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         appBar: AppBar(
           bottom: TabBar(
             tabs: <Widget> [
               Tab(
               icon : Icon(
                 Icons.category,
               ),
               text:'Categories',
               ),
               Tab(
                 icon:
                  Icon(
                    Icons.favorite
                    ),
                  text: 'Favorites',
                 ),
             ]
           ),
         ),
         body: TabBarView(
           children: <Widget> [
             CategoryScreen(),
             FavoritesScreen(),
           ]),
      ),
    );
  }
}