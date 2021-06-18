

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
//import 'package:meal_app/modules/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const RoutName ='meal-detail';
  
  @override
  Widget build(BuildContext context) {
   final mealid=ModalRoute.of(context).settings.arguments as String;
    final selectMeal=DUMMY_MEALS.firstWhere((Meal) => Meal.id==mealid);

    return Scaffold(
      appBar: AppBar(title: Text(selectMeal.title),),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              height:300,
              width:double.infinity,
              padding:EdgeInsets.all(5),
              
              child:Image.network(selectMeal.imageUrl,fit: BoxFit.cover,)
           ),
            Container(
            padding: EdgeInsets.all(10),
            child:Text("ingredients",style:Theme.of(context).textTheme.title),

            ), 
            Container(
              decoration: BoxDecoration(
                color:Colors.white,
                border:Border.all(color:Colors.grey[400]),
                borderRadius: BorderRadius.circular(10)
                
              ),
              padding: EdgeInsets.all(10),
              height:150,
              width:300,
              child:ListView.builder(
                    itemBuilder: (ctx,index)=> Card(
                    color: Colors.orange[300],
                    child:Padding(
                      padding: const EdgeInsets.symmetric(vertical:5,horizontal:10),
                      child: Text(selectMeal.ingredients[index]),
                    ),
                   ),
                   itemCount: selectMeal.ingredients.length,

              )
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:Text("Steps",style:Theme.of(context).textTheme.title),

            ),
            Container(
              decoration: BoxDecoration(
                color:Colors.white,
                border:Border.all(color:Colors.grey[400]),
                borderRadius: BorderRadius.circular(10)
                
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                bottom:15
              ),
              height:200,
              width:300,
              child:ListView.builder(
                    itemBuilder: (ctx,index)=> ListTile(
                     leading: CircleAvatar(
                       child:Text("# ${index+1}"
                       ),
                     ),
                       title:Text( selectMeal.steps[index]),

                    ),
                   itemCount: selectMeal.steps.length,

              ),
              
            ),
          ],
        ),
      ),
     /* floatingActionButton:FloatingActionButton(
        onPressed: (){Navigator.of(context).pop(mealid);},
        child:Icon(Icons.delete),
      ),*/
    );
  }
}