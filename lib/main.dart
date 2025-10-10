import 'package:flutter/material.dart';
import 'package:training_class/class6/example1.dart';
import 'package:training_class/class6/splashScreen.dart';
import 'package:training_class/class7/class7.dart';
import 'package:training_class/login.dart';
import 'package:training_class/login_screen.dart';

import 'auth_screen.dart';
import 'class5/home_redirect.dart';
import 'class6/example2.dart';
import 'class6/example3.dart';
import 'class7/listViewScreen.dart';
import 'class8/class8.dart';
import 'home.dart';

void main()
{
  runApp(NaziaApp());
}

class NaziaApp extends StatelessWidget {
  const NaziaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/':(context)=>Example1(),
      //   '/example2':(context)=>Example2(),
      //   '/example3':(context)=>Example3(),
      //   '/splash':(context)=>Splashscreen()
      // },
      // initialRoute: '/splash',

      home: SolutionClass(),
      // initial Screen
    );
  }
}

class ReshmaHome extends StatefulWidget {
  const ReshmaHome({super.key});

  @override
  State<ReshmaHome> createState() => _ReshmaHomeState();
}

class _ReshmaHomeState extends State<ReshmaHome> {
  int num=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          num++;
        });
      },child: Icon(Icons.add),),
      appBar: AppBar(title: Text('Counter App',style: TextStyle(color: Colors.white),),backgroundColor: Colors.purple,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter App'),
            Text('$num',style: TextStyle(color: Colors.blue,fontSize: 30),)
          ],
        ),
      ),
    );
  }
}




