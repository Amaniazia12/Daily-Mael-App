import 'package:daily_mael/widgets/Drawer.dart';
import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  static String routName = 'FilterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Theme.of(context).primaryColor,
          ),
          ) ,
        backgroundColor: Colors.white70,
      ),
      body:Container(
      child: Text('Filter'),
      ),
      drawer: Drawer_Widget(),
    );
  }
}