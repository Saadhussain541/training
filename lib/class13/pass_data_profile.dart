import 'package:flutter/material.dart';
class PassDataProfile extends StatefulWidget {
  String name;
  PassDataProfile({required this.name});

  @override
  State<PassDataProfile> createState() => _PassDataProfileState();
}

class _PassDataProfileState extends State<PassDataProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome ${widget.name}'),
      ),
    );
  }
}
