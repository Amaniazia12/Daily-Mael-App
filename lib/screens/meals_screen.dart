import '../dummy_data.dart';
import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
class MealScreen extends StatelessWidget {
  /*final String title;
  final Color color;
  final String id ;
  MealScreen (this.id,this.title,this.color);*/
  static const routeName='/meal_Screen';
  @override
  Widget build(BuildContext context) {
    final arguments= ModalRoute.of(context).settings.arguments as Map <String,String>;
    final title =arguments['title'];
    final id =arguments['id'];
    final categoryMeals= DUMMY_MEALS.where((meal){
      return meal.categories.contains(id);
    } ).toList();
    //final colorArgu = ModalRoute.of(context).settings.arguments as Map <String,Color>;
    //final Color color =colorArgu['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor:Theme.of(context).primaryColor,
      ),
      body: ListView .builder(
        itemBuilder: (ctx,index){
         return MealItem(
           id:categoryMeals[index].id,
           title: categoryMeals[index].title,
           imageUrl: categoryMeals[index].imageUrl,
           duration: categoryMeals[index].duration,
           affordability: categoryMeals[index].affordability,
           complexity: categoryMeals[index].complexity,  
         );
        },
        itemCount: categoryMeals.length,
        ), 
      
    );
  }
}