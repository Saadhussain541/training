import 'package:flutter/material.dart';
import 'package:training_class/revisions/revision_login_screen.dart';
class RevisionOnboardScreen extends StatefulWidget {
  const RevisionOnboardScreen({super.key});

  @override
  State<RevisionOnboardScreen> createState() => _RevisionOnboardScreenState();
}

class _RevisionOnboardScreenState extends State<RevisionOnboardScreen> {
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.emoji_emotions,color: Colors.blue,size: 50,),
                SizedBox(height: 30,),
                Text('Brilliant Reviews',style: TextStyle(fontSize: 20,color: Colors.blue),),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
                    }, child: Text('Next',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

                    ))
              ],
            ),),
          ),
          Container(
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.delivery_dining,color: Colors.blue,size: 50,),
                SizedBox(height: 30,),
                Text('Fast Delivery',style: TextStyle(fontSize: 20,color: Colors.blue),),
                SizedBox(height: 30,),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
                    }, child: Text('Next',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

                    ))
              ],
            ),),
          ),
          Container(
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.supervised_user_circle,color: Colors.blue,size: 50,),
                SizedBox(height: 30,),
                Text('2M Users',style: TextStyle(fontSize: 20,color: Colors.blue),),
                SizedBox(height: 30,),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RevisionLoginScreen()));

                    }, child: Text('Skip',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

                    ))
              ],
            ),),
          ),
        ],
      ),
    );
  }
}
