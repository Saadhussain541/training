import 'package:flutter/material.dart';
class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablet Screen"), centerTitle: true,),
      body: Center(child: Text('Desktop Screen'),),
    );
  }
}
