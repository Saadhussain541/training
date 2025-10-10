import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_class/class6/example1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 3), (timer)=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Example1())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
            // }, child: Text("Push")),
            // ElevatedButton(onPressed: (){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
            //
            // }, child: Text("PushReplacement")),
            // ElevatedButton(onPressed: (){
            //   Navigator.pushNamed(context, '/');
            // }, child: Text('PushNamed'))

        DefaultTextStyle(
        style: GoogleFonts.pacifico(color: Colors.black,fontSize: 40),
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Hello World'),
            WavyAnimatedText('Look at the waves'),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
          ],
        ),
      ),
    );
  }
}
