import 'package:daily_mael/models/dummy_data.dart';
import 'package:flutter/material.dart';
class MealDetailsScreen extends StatelessWidget {
  static const rouatName='/meal-details';
   
  Widget buildContainer(Widget child) {
    return Container(
     /* decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,*/
      child: child,
    );
   }
  Widget ingrediantFun(String ingredianVar , BuildContext context )
  {
      return  Container(
                 width: MediaQuery.of(context).size.width,  
                child: Card( 
                      child: Padding( 
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      child: Text(ingredianVar),
                    ),
         ),
      );
  }
  @override
  Widget build(BuildContext context) {
    final ids = ModalRoute.of(context).settings.arguments as Map <String,String>;
    final mealId=ids['mealID'];
    final categoryId=ids['categoryId'];
    final selectedMael = DUMMY_MEALS.firstWhere((meal) => meal.id==mealId);
    final selectedcategory= DUMMY_CATEGORIES.firstWhere((category) => category.id==categoryId);
    return Scaffold(
      appBar: AppBar(
      backgroundColor:selectedcategory.color,  
      title: Text(
        selectedMael.title
        ,style:Theme.of(context).textTheme.bodyText1,
       )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //height: MediaQuery.of(context).size.height*0.3,
              //width: MediaQuery.of(context).size.width,
              child: Image.network(selectedMael.imageUrl),),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
              shape: BoxShape.rectangle,
                color: selectedcategory.color,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Text('Ingredients',  style:Theme.of(context).textTheme.bodyText1,                           
              ),
              ),
              Container(

                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
                ),
                //height:MediaQuery.of(context).size.height,
                //width: MediaQuery.of(context).size.width,
                child:  Column(
                  children: 
                    selectedMael.ingredients.map((ingrediant) => ingrediantFun(ingrediant,context) 
                      ).toList(),
                  ),
                ),
              Container(
              decoration: BoxDecoration(
              shape: BoxShape.rectangle,
                color: selectedcategory.color,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Text('Steps',  style:Theme.of(context).textTheme.bodyText1,                           
              ),
              ),
              Container(
                height: 400,
                child: 
                    ListView.builder(itemBuilder: 
                    (ctx,index )=>Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: selectedcategory.color,
                            child: Text(
                              '${index+1}',
                            style:TextStyle(
                              color: Colors.black,
                            ),
                            ),
                          ),
                          title: Text(selectedMael.steps[index]) ,
                        ),
                        Divider(),
                      ],
                    ),
                    itemCount: selectedMael.steps.length,
                ),
              )
          ],
        ),
      ),
      
    );
  }
}