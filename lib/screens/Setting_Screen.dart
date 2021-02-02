import 'package:flutter/material.dart';
import '../widgets/Drawer.dart';
class SettingScreen extends StatelessWidget {
  static String routName = 'SettingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Theme.of(context).primaryColor,
          ),
          ) ,
        backgroundColor: Colors.white70,
      ),
      body: Container(
      child: Text('Setting'),
      ),
       drawer: Drawer_Widget(),
    );
  }
}