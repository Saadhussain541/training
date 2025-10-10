import 'package:flutter/material.dart';
class ReusableMenu extends StatelessWidget {
  String title;
  IconData icon;
ReusableMenu({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(leading: Icon(icon),title: Text(title),));
  }
}
