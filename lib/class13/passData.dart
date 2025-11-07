import 'package:flutter/material.dart';
import 'package:training_class/class13/pass_data_profile.dart';
class PassdataScreen extends StatefulWidget {
  const PassdataScreen({super.key});

  @override
  State<PassdataScreen> createState() => _PassdataScreenState();
}

class _PassdataScreenState extends State<PassdataScreen> {
  final nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Go to Profile Screen'),
            SizedBox(height: 20,),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your Name"
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PassDataProfile(name: nameController.text,)));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
