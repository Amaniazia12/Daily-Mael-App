import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/Category_item.dart';
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
     body: GridView(
       gridDelegate: 
        SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2.5,
          ),
       children: 
        DUMMY_CATEGORIES.map((cItem) => CategoryIteam(cItem.id, cItem.title, cItem.color) 
          ).toList(),
       ),
    );
  }
}