import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class FirstDio extends StatefulWidget {
  const FirstDio({super.key});

  @override
  State<FirstDio> createState() => _FirstDioState();
}

class _FirstDioState extends State<FirstDio> {
  final dio=Dio();
  void getUser() async
  {
    final response=await dio.get('https://jsonplaceholder.typicode.com/users');
    print(response.data);
  }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

    );
  }
}
