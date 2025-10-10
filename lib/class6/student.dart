import 'package:flutter/material.dart';
class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Student Screen'),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
        ],
      ),),
    );
  }
}
