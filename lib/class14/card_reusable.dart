import 'package:flutter/material.dart';
class CardReusable extends StatelessWidget {


  IconData icon;
  String title;
  String value;
  Color bgColor;

  CardReusable({required this.value,required this.title,required this.icon,required this.bgColor});


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      padding: EdgeInsets.symmetric(vertical: 70),

      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),

      child:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: Colors.white,),
          Text(title,style: TextStyle(color: Colors.white,fontSize: 16),),
          Text(value,style: TextStyle(color: Colors.white,fontSize: 22))
        ],
      ),),
    ));
  }
}
