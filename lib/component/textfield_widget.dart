import 'package:flutter/material.dart';
class ReusableTextField extends StatelessWidget {
  TextEditingController controller;
  bool isShow;
  String label;
  String hintText;
  IconData icon;
  ReusableTextField({required this.controller,required this.label, required this.hintText,required this.icon,this.isShow=true});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      obscureText: isShow,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          // fillColor: Colors.deepPurpleAccent,
          // filled: true,
          border: OutlineInputBorder(),
          label: Text(label),
          hintText: hintText,
          prefixIcon: Icon(icon)
      ),

    );
  }
}
