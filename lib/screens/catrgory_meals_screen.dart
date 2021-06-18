import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/modules/meal.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen  extends StatefulWidget {
  @override
  static const RoutName ='category-meal';
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen > {

  void _removeMeal(String mealid){

  }
  @override
  Widget build(BuildContext context) {
    final routeArg=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryid=routeArg['id'];
    final categorytitle=routeArg['title'];


    
    final categoryMeals=DUMMY_MEALS.where((Meal) {
    return Meal.categories.contains(categoryid);
     } ).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categorytitle),),
      body: ListView.builder(
        itemBuilder:(ctx,index){
          return
        MealItem(
          id:categoryMeals[index].id,
          title:categoryMeals[index].title ,
          imageurl:categoryMeals[index].imageUrl,
          duration:categoryMeals[index].duration ,
          complexity: categoryMeals[index].complexity,
          affordability: categoryMeals[index].affordability,
          removeItem: _removeMeal,

          
          
          );
        
        },

         itemCount:categoryMeals.length ,
      ),
       
      );
   
  }
}

