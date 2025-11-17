import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_class/api/service.dart';
class Description extends StatefulWidget {
  int id;
  Description({required this.id});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(future: ApiService.getDescription(id: widget.id), builder: (context,snapshot){
          if(snapshot.hasError)
          {
            return Center(child: Icon(Icons.error_outline),);
          }
          if(snapshot.connectionState==ConnectionState.waiting)
          {
            return Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasData)
          {
            var data=jsonDecode(snapshot.data);
        
            return Column(
              children: [
                Image.network(data["tvShow"]['image_thumbnail_path'],width: double.infinity,height: 300,),
                Text(data["tvShow"]['name'],style: TextStyle(color: Colors.deepPurple,fontSize: 25),),
                Text(data['tvShow']['description'])
              ],
            );
          }
          return Container();
        }),
      ),
    );
  }
}
