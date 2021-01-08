import 'package:flutter/material.dart';

import 'screens/Categories_screen.dart';
import './screens/mealDetails_screen.dart';
import 'screens/meals_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.cyan,
        accentColor: Colors.redAccent,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
           bodyText1: 
           TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
              ),
           ),
        ),
            /* 
          bodyText2: 
             TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color:Colors.white
            ),   
        )
      )*/
        /*textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),*/
      
      //,home: CategoryScreen(),
     initialRoute: '/',
      routes: {
        '/':(ctx)=> CategoryScreen(),
        MealScreen.routeName:(ctx)=> MealScreen(),
        MealDetailsScreen.rouatName:(ctx)=>MealDetailsScreen(),
      },
    );
  }
}