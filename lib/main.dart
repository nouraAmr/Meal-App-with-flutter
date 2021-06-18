
import 'package:flutter/material.dart';
import 'package:meal_app/screens/catrgory_meals_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';
//import 'screens/categories_screen.dart';
//import 'widgets/category_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mealAPP',
      theme:ThemeData(
        primaryColor:Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.red[50],


       textTheme: ThemeData.light().textTheme.copyWith(
        body1: TextStyle(color: Colors.redAccent),
        title: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
       )
      ),

      debugShowCheckedModeBanner: false,

      //home: CategoriesScreen(),
      routes: {
        '/':(context)=>TabsScreen(),
        CategoryMealScreen.RoutName:(context) =>CategoryMealScreen(),
        MealDetailScreen.RoutName:(context) =>MealDetailScreen(),
        FilterScreen.RoutName:(context)=>FilterScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal APP"),

      ),
      //body: CategoriesScreen(),
      
        );
   
  
    
  }
}
