import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
     // appBar: AppBar(title: Text('MEAL APP'),),
          body: GridView(
        padding: EdgeInsets.all(25),
        children:  DUMMY_CATEGORIES.map((catedata) => 
        CategoryItem(catedata.title,catedata.id,catedata.color
        ),).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
           childAspectRatio: 3/2,
           mainAxisSpacing: 20,
           crossAxisSpacing: 20,
           
        
        ),

      ),
    );
    
  }

}