import 'package:flutter/material.dart';
class ProfileBottomScreen extends StatefulWidget {
  const ProfileBottomScreen({super.key});

  @override
  State<ProfileBottomScreen> createState() => _ProfileBottomScreenState();
}

class _ProfileBottomScreenState extends State<ProfileBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Profile Screen"),),
    );
  }
}
