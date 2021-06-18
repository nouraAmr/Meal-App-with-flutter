import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../screens/catrgory_meals_screen.dart';

class CategoryItem extends StatelessWidget{
  final String id;
  final String title;
  final Color color;

 void selectcate(BuildContext cxt){
   Navigator.of(cxt).pushNamed(CategoryMealScreen.RoutName,
   arguments: {
     'id':id,
     'title':title,
   },
   );

 }
  const CategoryItem(  this.title,this.id, this.color
  ) ;
  @override

  Widget build(BuildContext context) {
  return InkWell(
    onTap: ()=>selectcate(context),
    splashColor: Theme.of(context).primaryColor,
    borderRadius:BorderRadius.circular(15),
     
    
    child: Container(
      padding:EdgeInsets.all(15),
      child:Text(title,style:Theme.of(context).textTheme.title),
    
      

      decoration: BoxDecoration(
        color: color,
       //// gradient: LinearGradient(
         // colors:[
           // color.withOpacity(4.0),
            //color,
          //],
          //begin:Alignment.topLeft ,
          //end: Alignment.bottomRight,
       // ),
        borderRadius:BorderRadius.circular(15),
      ),
    ),
  
  );
  
  }
  }
