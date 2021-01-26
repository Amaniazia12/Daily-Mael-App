import '../models/Category.dart';

import '../models/dummy_data.dart';
import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
class MealScreen extends StatelessWidget {
  static const routeName='/meal_Screen';
  

  @override
  Widget build(BuildContext context) {
    final categoryId= ModalRoute.of(context).settings.arguments as String;
    //print(categoryId+"test ID");
    final _category= DUMMY_CATEGORIES.firstWhere((category) => category.id==categoryId);
    //print(_category.title);
    final categoryMeals= DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    } ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
        backgroundColor:_category.color,
      ),
      body: ListView .builder(
        itemBuilder: (ctx,index){
         return MealItem(
           id:categoryMeals[index].id,
           title: categoryMeals[index].title,
           selectedCategoryID: _category.id,
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