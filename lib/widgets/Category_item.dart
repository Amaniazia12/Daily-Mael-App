
import 'package:flutter/material.dart';

import '../screens/meals_screen.dart';
class CategoryIteam extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  
  CategoryIteam(this.id,this.title,this.color);
  void selectCategory (BuildContext cont){
    Navigator.of(cont).pushNamed(
      MealScreen.routeName,
      arguments: {
        'id':id,
        'title':title,
        //'color':color
      }
  );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectCategory(context),
      splashColor: color,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding:const  EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
               ],
            begin: Alignment.bottomRight,
            //end: Alignment.bottomLeft,
              ),
            borderRadius: BorderRadius.circular(30),
        ),
        //color: Colors.deepPurple,
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
