import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email')
                ),
              ),
              SizedBox(height:15),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
