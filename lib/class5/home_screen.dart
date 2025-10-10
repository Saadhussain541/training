import 'package:flutter/material.dart';
class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange,),

      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text('Back')),),
    );
  }
}
