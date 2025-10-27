

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:training_class/revisions/revision_onboard_screen.dart';
class RevisionSplashScreen extends StatefulWidget {
  const RevisionSplashScreen({super.key});

  @override
  State<RevisionSplashScreen> createState() => _RevisionSplashScreenState();
}

class _RevisionSplashScreenState extends State<RevisionSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState

    Timer.periodic(Duration(seconds: 5),(val)=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RevisionOnboardScreen()))) ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.ac_unit,size: 40,),
      ),
    );
  }
}
