//import 'package:daily_mael/models/Category.dart';
import 'package:daily_mael/widgets/Drawer.dart';

import './favorites_Screen.dart';
import './Categories_screen.dart';
import 'package:daily_mael/screens/Categories_screen.dart';
import 'package:flutter/material.dart';
class TapsScreen extends StatefulWidget {
  @override
  _TapsScreenState createState() => _TapsScreenState();

}

class _TapsScreenState extends State<TapsScreen> {
  List <Map<String,Object>> screensList=[
    {
      'page':CategoryScreen(),
      'title':'Categories'
    },
    {
      'page':FavoritesScreen(),
      'title':'Favorites'
    }
  ];
  int _indexOfSelectedScreen=0;
  void _selectedScreen(int index ){
    setState(() {
      _indexOfSelectedScreen=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white70,
           title: Text(screensList[_indexOfSelectedScreen]['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Theme.of(context).primaryColor),),
         ),
         drawer: Drawer_Widget(),
         body: screensList[_indexOfSelectedScreen]['page'],
         bottomNavigationBar: BottomNavigationBar(
           onTap:_selectedScreen,
           //backgroundColor: Theme.of(context).primaryColor,
           currentIndex: _indexOfSelectedScreen,
           //type: BottomNavigationBarType.shifting,
           items: [
             BottomNavigationBarItem(
               backgroundColor: Theme.of(context).primaryColor,
               icon: Icon(Icons.category),
               title: Text('Categories'),
             ),
             BottomNavigationBarItem(
               backgroundColor: Theme.of(context).primaryColor,
               icon: Icon(Icons.favorite),
               title: Text('Favorite'),
             ),
           ]),
      );
  }
}