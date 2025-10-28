import 'package:flutter/material.dart';
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 160,
                  color: Colors.purple,
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Icon(Icons.card_travel),),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Icon(Icons.favorite_outline),),
                Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text('Product Name',style: TextStyle(color: Colors.white,fontSize: 20),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
