import 'package:flutter/material.dart';
class HomeBottomScreen extends StatefulWidget {
  const HomeBottomScreen({super.key});

  @override
  State<HomeBottomScreen> createState() => _HomeBottomScreenState();
}

class _HomeBottomScreenState extends State<HomeBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Body Screen"),),
    );
  }
}
