import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training_class/api/service.dart';
class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: ApiService.getPost(), builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasError)
          {
            return Center(child: Icon(Icons.error_outline,color: Colors.red,),);
          }
        if(snapshot.connectionState==ConnectionState.waiting)
          {
            return Center(child: CircularProgressIndicator(),);
          }
        if(snapshot.hasData)
          {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  String title=snapshot.data[index]['title'];
                  String body=snapshot.data[index]['body'];
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(snapshot.data[index]['userId'].toString()),
                    Text(title),
                    Text(body)
                  ],
                ),
              );
            });
          }
return Container();
      }),
    );
  }
}
