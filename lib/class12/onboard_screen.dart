import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'TabScreen.dart';
class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final pageController=PageController();
  int currentState=0;
  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value)
              {
              setState(() {
                currentState=value;
              });


              },
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/verctor1.jpg'),
                        SizedBox(height: screenHeight*0.05,),
                        Text('Heading',style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
                        SizedBox(height: screenHeight*0.02,),
                        Text('This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description '
                            'This is dummy description This is dummy description',style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,)

                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/vector2.jpg'),
                        SizedBox(height: screenHeight*0.05,),
                        Text('Heading1',style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
                        SizedBox(height: screenHeight*0.02,),
                        Text('This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description '
                            'This is dummy description This is dummy description',style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,)

                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/vector3.jpg'),
                        SizedBox(height: screenHeight*0.05,),
                        Text('Heading2',style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
                        SizedBox(height: screenHeight*0.02,),
                        Text('This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description This is dummy description '
                            'This is dummy description This is dummy description',style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,)

                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(

                bottom: 0,
                left: 20,
                child: currentState==0?SizedBox():TextButton(onPressed: (){

                  pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.linear);
                }, child: Text('Prev'))),
            Positioned(

                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                  controller: pageController,  // PageController
                  count:  3,
                  effect:  WormEffect(),  // your preferred effect
                  onDotClicked: (index){
                  }
                            ),
                ) ),
            Positioned(
                bottom: 0,
                right: 20,
                child: currentState==2?TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Tabscreen()));
                }, child: Text('Skip')):TextButton(onPressed: (){
                  pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
                }, child: Text('Next')))
          ],
        ),
      ),
    );
  }
}
