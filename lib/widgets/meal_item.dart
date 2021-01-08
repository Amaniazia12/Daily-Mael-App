
import '../screens/mealDetails_screen.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';
class MealItem extends StatelessWidget {
  final String id ;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.affordability,
    @required this.complexity,
    @required this.duration,
  });

   String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }
  void selectedMeal(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      MealDetailsScreen.rouatName,
      arguments: id
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectedMeal(context),
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column (
          children :<Widget>[
             Stack(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20),
                     topRight: Radius.circular(20)
                   ),
                   child: Image.network(
                         imageUrl,
                         height: 250,
                         width: double.infinity,
                         fit: BoxFit.cover,
                   ),
                 ),
                Positioned(
                  top: 0,
                  child:
                   Container(
                    padding: EdgeInsets.all(10),
                    width: 350,
                    color: Colors.white54,
                    child:Text( title ,style: Theme.of(context).textTheme.bodyText1,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                     ),
                  ),
                )
               ], 
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget> [
                    Row(
                      children:<Widget> [
                        Icon(Icons.schedule),
                        SizedBox(width: 5,),
                        Text('$duration min')
                      ],
                    ),
                    Row(
                      children:<Widget> [
                        Icon(Icons.work),
                        SizedBox(width: 5,),
                        Text(complexityText)
                      ],
                    ),
                    Row(
                      children:<Widget> [
                        Icon(Icons.attach_money),
                        SizedBox(width: 5,),
                        Text(affordabilityText)
                      ],
                    )
                  ],
                ),
              )
            ]
          ),
        )
      );
  }
}