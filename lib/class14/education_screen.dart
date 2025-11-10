import 'package:flutter/material.dart';
import 'package:training_class/class14/card_reusable.dart';
class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeigth=MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Saad',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
            Text('Let\'s learning something new',style: TextStyle(fontSize: 14,color: Colors.black),),
          ],
        ),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Current Month Progress',style: TextStyle(fontSize: 12),),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  SizedBox(height: screenHeigth*0.02,),
                  Row(
                    children: [
                      CardReusable(value: "75", title: 'Total leads', icon: Icons.person,bgColor: Colors.deepPurple,),
                      SizedBox(width: screenWidth*0.02,),
                      CardReusable(value: "800", title: 'Total Student', icon: Icons.account_circle,bgColor: Colors.orange,),
                      SizedBox(width: screenWidth*0.02,),
                      CardReusable(value: "75", title: 'Total leads', icon: Icons.person,bgColor: Colors.green,),
                      SizedBox(width: screenWidth*0.02,),
                      CardReusable(value: "75", title: 'Total leads', icon: Icons.person,bgColor: Colors.grey,),

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: screenHeigth*0.02,),
            Row(
              children: [
                SizedBox(
                  width: screenWidth*0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Top Agents'),
                          Row(
                            children: [
                              Text('View all',style: TextStyle(fontSize: 10),),
                              SizedBox(width: screenWidth*0.01,),
                              Icon(Icons.expand_more)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: screenHeigth*0.02,),
                      ...List.generate(5, (index){
                        return Padding(
                          padding:EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: screenWidth*0.02,),
                                  Text('Reshma')
                                ],
                              ),
                              Icon(Icons.chevron_right)

                            ],
                          ),
                        );
                      })
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth*0.35,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.book,color: Colors.orange,),
                          Text('40',style: TextStyle(color: Colors.blue,fontSize: 25),),
                          Text('Courses',style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      ),
                      SizedBox(height: screenHeigth*0.03,),
                      Column(
                        children: [
                          Icon(Icons.cast_for_education,color: Colors.orange,),
                          Text('28',style: TextStyle(color: Colors.blue,fontSize: 25),),
                          Text('Certificates',style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      )
                    ],
                  ),

                )
              ],
            )
          ],
        ),
        ),
      )),
    );
  }
}
