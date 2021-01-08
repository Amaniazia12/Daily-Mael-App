import 'package:daily_mael/dummy_data.dart';
import 'package:flutter/material.dart';
class MealDetailsScreen extends StatelessWidget {
  static const rouatName='/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealId       = ModalRoute.of(context).settings.arguments as String;
    final selectedMael = DUMMY_MEALS.firstWhere((meal) => meal.id==mealId);
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Theme.of(context).primaryColor,  
      title: Text(
        selectedMael.title
        ,style:Theme.of(context).textTheme.bodyText1,
       )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(child: Image.network(selectedMael.imageUrl),),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Text('Ingredients',  style:Theme.of(context).textTheme.bodyText1,                           
              ),
              )
          ],
        ),
      ),
      
    );
  }
}