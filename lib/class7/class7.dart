//
// AssetImage complete
// SingleChildScrollView complete
// List View
// ListView.builder

import 'package:flutter/material.dart';
class ClassSeven extends StatefulWidget {
  const ClassSeven({super.key});

  @override
  State<ClassSeven> createState() => _ClassSevenState();
}

class _ClassSevenState extends State<ClassSeven> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Image.asset('assets/images/dummy1.jpg'),
    //   ),
    // );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: SingleChildScrollView(

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
            
                  width: double.infinity,
                  height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
            
                    width: double.infinity,
                    height:100
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 250,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 250,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 250,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 250,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
