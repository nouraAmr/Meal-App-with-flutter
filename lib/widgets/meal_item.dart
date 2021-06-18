import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/modules/meal.dart';
import '../screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
    final String id;
    final String imageurl;
    final String title;
    final int duration;
    final Affordability affordability;
    final Complexity complexity;
    final Function removeItem;
 
  

  const MealItem({
    @required this.id,
    @required this.imageurl,
    @required this.title,
    @required this.duration,
    @required this.affordability, 
    @required this.complexity,
     @required this.removeItem});
  
    String get ComplexityText{
      switch(complexity){
        case Complexity.Simple :return 'simple'; break;
        case Complexity.Challenging :return 'Challenging'; break;
        case Complexity.Hard :return 'hard'; break;
        default :return 'known'; break;
      }
    }

    String get AffordabilityText{
      switch(affordability){
        case Affordability.Affordable :return 'Affordable'; break;
        case Affordability.Pricey :return 'Pricey'; break;
        case Affordability.Luxurious :return 'Luxurious'; break;
        default :return 'known'; break;
      }
    }


   void selectMeal(BuildContext ctx){
   Navigator.of(ctx).pushNamed(
     MealDetailScreen.RoutName,
     arguments:id
   );
   //.then((result) {

     //if(result!=null) removeItem(result);
   //});
   
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectMeal(context),
      child: Card(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(4)
       ),
        elevation: 4,
        margin: EdgeInsets.all(15),
       child: Column(
         children: [
           Stack(
             children:[
            ClipRRect(
             borderRadius:BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),

             ),
             child: Image.network(imageurl,height: 200,width: double.infinity,fit: BoxFit.cover,),
             
            ),
                    
                     Positioned(
                       bottom: 20,
                       right: 10,

                       child: Container(
                         width: 290,
                         color: Colors.black45,
                         padding: EdgeInsets.symmetric(vertical:5,horizontal:20),
                         child: Text(title,style: TextStyle(fontSize:20 ,color:Colors.white ),
                         softWrap: true,
                          overflow: TextOverflow.fade,
                         ),
                       ),
                     )
                     ],
                     

           ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(width:6),
                    Text("$duration min"),

                  ],

                ),
                Row(
                   children: [
                    Icon(Icons.work),
                    SizedBox(width:6),
                    Text("$ComplexityText"),

                  ],
                ),
               Row(
                   children: [
                    Icon(Icons.attach_money),
                    SizedBox(width:4),
                    Text("$AffordabilityText"),

                 ],
                ),
              ],
            ),
          )


         ],
       ),

      ),
    );
  }
}