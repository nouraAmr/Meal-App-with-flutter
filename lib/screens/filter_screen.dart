import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';
class FilterScreen extends StatelessWidget {
  static const RoutName ='filter page';
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(title: Text("Your Filter"),),
      body: Center(
        child: Text("filter page"),
      ),
         
        drawer: MainDrawer(),
        
      );
    
  }
}