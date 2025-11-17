import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  // Future<List> getData() async
  // {
  //   final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //   final data=jsonDecode(response.body);
  //   final dataList=[];
  //   if(response.statusCode==200)
  //     {
  //
  //       for(Map i in data)
  //       {
  //         dataList.add(i);
  //       }
  //
  //       return dataList;
  //     }
  //   else
  //     {
  //       throw Exception('Error!');
  //     }
  //
  //
  //
  // }

  Future<List> getData() async
  {
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    final data=jsonDecode(response.body);
    final postData=[];
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postData.add(i);
      }
      print(postData);

      return postData;
    }
    else
    {
      debugPrint(response.statusCode.toString());
      throw Exception('failed to load post data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: getData(), builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasError)
        {

          return Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline,color: Colors.red,),
              Text(snapshot.error.toString())
            ],
          ),);
        }
        if(snapshot.connectionState==ConnectionState.waiting)
        {
          return Center(child: CircularProgressIndicator(),);
        }
        if(snapshot.hasData)
        {
          return ListView.builder(itemBuilder: (context,index){
            String title=snapshot.data[index]['title'];
            String subTitle=snapshot.data[index]['body'];
            return ListTile(
              title: Text(title),
              subtitle: Text(subTitle),

            );
          });
        }
        return Container();
      }),
    );
  }
}
