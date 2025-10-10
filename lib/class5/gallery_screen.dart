import 'package:flutter/material.dart';
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text('Back')),),
    );
  }
}
