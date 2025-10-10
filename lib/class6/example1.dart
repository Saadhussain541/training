import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example'),centerTitle: true,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('My name is Ali',style: GoogleFonts.pacifico(fontSize: 40),),
          Text('My name is Ahmed',style: GoogleFonts.poppins(fontSize: 30),),
        ],
      ),),
    );
  }
}
