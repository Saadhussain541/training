import 'package:flutter/material.dart';
class GalleryBottomScreen extends StatefulWidget {
  const GalleryBottomScreen({super.key});

  @override
  State<GalleryBottomScreen> createState() => _GalleryBottomScreenState();
}

class _GalleryBottomScreenState extends State<GalleryBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Gallery Screen"),),
    );
  }
}
