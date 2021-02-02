import 'package:daily_mael/screens/Filter_Screen.dart';
import 'package:daily_mael/screens/Setting_Screen.dart';
import 'package:flutter/material.dart';
class Drawer_Widget extends StatelessWidget {
 Widget buildListTitle(String title , IconData icon ,BuildContext context , Function screen){
   return ListTile(
            leading: Icon (
              icon,
              size:26,
              color: Theme.of(context).primaryColor,
            ),
            title: 
              Text(
                 title,
                 style: 
                 TextStyle(
                   color:Theme.of(context).accentColor ,
                   fontSize: 19,
                    ),
              ),
              onTap:screen,
          );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Daily Mael',
            style:TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            )
            ),
          ),
          buildListTitle('Maels',Icons.restaurant,context ,(){Navigator.of(context).pushNamed('/');}),
          buildListTitle('Filter',Icons.filter,context,(){Navigator.of(context).pushNamed(FilterScreen.routName);}),
          buildListTitle('Settings',Icons.settings,context,(){}),
        
        ],
      ),
    );
  }
}