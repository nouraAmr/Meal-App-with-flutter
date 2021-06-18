import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';
class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title,IconData icon,Function taponHandlar){
return ListTile(
          leading:Icon(icon,size:26),
          title: Text(title,style: TextStyle(
            fontSize: 26,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),),
          onTap:taponHandlar,
        );

  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
      children: [
        Container(
          height:100,
          width:double.infinity,
          padding:EdgeInsets.all(10),
          color: Theme.of(context).primaryColor,
          child:Text("Cooking UP!",style: TextStyle(fontSize: 26,fontWeight:FontWeight.bold,color: Colors.amber[50]),),
          alignment: Alignment.centerLeft,
      
        ),
        SizedBox(height:5),
        
        buildListTile("Meal",Icons.restaurant,(){Navigator.of(context).pushReplacementNamed('/');}),
        buildListTile("Filter",Icons.settings,(){Navigator.of(context).pushReplacementNamed(FilterScreen.RoutName);}),
      ],
      )
    );
  }
}