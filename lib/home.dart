import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/33368131/pexels-photo-33368131.jpeg?_gl=1*ed3mmv*_ga*MTk4MTM5MjI0OC4xNzU4NzI1NzMw*_ga_8JE65Q40S6*czE3NTg3MjU3MjkkbzEkZzEkdDE3NTg3MjU3OTEkajU4JGwwJGgw"),fit: BoxFit.cover),
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black,width: 5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(1, 9),


                  )
                ]

            ),
            width: 300,
            height: 250,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nazia',style: TextStyle(color: Colors.white,fontSize: 22),),
                Text('Female',style: TextStyle(color: Colors.white,fontSize: 22)),
                Text('22',style: TextStyle(color: Colors.white,fontSize: 22))
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 150,
                color: Colors.yellow,
              ),
              Container(
                width: 200,
                height: 150,
                color: Colors.black,
              )

            ],
          )
        ],
      ),
    );
  }
}
