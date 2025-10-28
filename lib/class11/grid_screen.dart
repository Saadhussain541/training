// GridView (count,maxWidth)
// GridView.builder
//Stack
//Positioned

import 'package:flutter/material.dart';
class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List employee=[
    {
      "name":"Saad",
      "age":21,
      "status":"Developer",
      "gender":"Male"
    },
    {
      "name":"Nazia",
      "age":21,
      "status":"Software Engineer",
      "gender":"Female"
    },
    {
      "name":"Anila",
      "age":21,
      "status":"QA",
      "gender":"Female"
    },
    {
      "name":"Reshma",
      "age":21,
      "status":"Backend Developer",
      "gender":"Female"
    },
    {
      "name":"Ahmed",
      "age":21,
      "status":"Developer",
      "gender":"Male"
    },
    {
      "name":"Muzammil",
      "age":21,
      "status":"Developer",
      "gender":"Male"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: GridView.count(crossAxisCount: 3,
    //   crossAxisSpacing: 20,
    //   mainAxisSpacing: 20,
    //   children: [
    //     Container(color: Colors.red,child: Text('sfd'),),
    //     Container(color: Colors.black,),
    //     Container(color: Colors.purple,),
    //     Container(color: Colors.yellow,),
    //     Container(color: Colors.orange,),
    //     Container(color: Colors.purple,),
    //     Container(color: Colors.red,),
    //   ],
    //
    //   ),
    // );

    // return Scaffold(
    //   body: GridView.extent(maxCrossAxisExtent: 300,
    //   children: [
    //         Container(color: Colors.red,child: Text('sfd'),),
    //         Container(color: Colors.black,),
    //         Container(color: Colors.purple,),
    //         Container(color: Colors.yellow,),
    //         Container(color: Colors.orange,),
    //         Container(color: Colors.purple,),
    //         Container(color: Colors.red,),
    //   ],
    //   ),
    // );


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: employee.length,
            gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250,
            crossAxisSpacing: 10,
              mainAxisSpacing: 15

            ),
            itemBuilder: (context,index){
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: ${employee[index]['name']}'),
                Text('Age: ${employee[index]['age']}'),
                Text('Status: ${employee[index]['status']}'),
                Text('Gender: ${employee[index]['gender']}')
              ],
            ),),
          );
            }),
      ),
    );
  }
}
