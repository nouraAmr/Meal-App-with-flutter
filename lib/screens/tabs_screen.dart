

import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map <String,Object>> _page=[{
  'page':CategoriesScreen(),
  'title':'Categories',
},
{
  'page':FavouritesScreen(),
  'title':'Your Favourate',
}
];


  int _selectpageindex=0;
   void _selectpage(int value) {
     setState(() {
       _selectpageindex=value;
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_page[_selectpageindex]['title'])
      ,),
      body:_page[_selectpageindex]['page'],
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
                backgroundColor: Theme.of(context).primaryColor,
                selectedItemColor:Theme.of(context).primaryColor,
                unselectedItemColor:Theme.of(context).accentColor ,
                currentIndex:_selectpageindex ,
                items:[
                  
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  title:Text("Categorise") ,
                  ),
        
                 BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  title:Text("Favourate") ,
                  ),
                ]
              ),
              drawer: MainDrawer(),
            );
          }
        
         
}