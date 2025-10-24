import 'package:flutter/material.dart';
class FaqBottomScreen extends StatefulWidget {
  const FaqBottomScreen({super.key});

  @override
  State<FaqBottomScreen> createState() => _FaqBottomScreenState();
}

class _FaqBottomScreenState extends State<FaqBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("FAQ Screen"),),
    );
  }
}
