import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:training_class/api/description.dart';
import 'package:training_class/api/service.dart';
class Moviescreen extends StatefulWidget {
  const Moviescreen({super.key});

  @override
  State<Moviescreen> createState() => _MoviescreenState();
}

class _MoviescreenState extends State<Moviescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(future: ApiService.getMovie(), builder: (context,snapshot){
          if(snapshot.hasError)
            {
              return Center(child: Icon(Icons.error_outline),);
            }
          if(snapshot.connectionState==ConnectionState.waiting)
            {
              return Center(child: CircularProgressIndicator(),);
            }
          if(snapshot.hasData ||snapshot.hasData!=null)
            {
              var data=jsonDecode(snapshot.data);
              var movieData=data['tv_shows'];
              return ListView.builder(
                  itemCount: movieData.length,
                  itemBuilder: (context,index){

                var movieImg=movieData[index]['image_thumbnail_path'];
                var name=movieData[index]['name'];
                var id=movieData[index]['id'];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(id: id)));
                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Column(
                        children: [
                          Image.network(movieImg,width: double.infinity,height: 200,fit: BoxFit.fill,),
                          SizedBox(height: 10,),
                          Text(name,style: TextStyle(color: Colors.deepPurple,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                );
              });

            }
          return Container();
        }),
      ),
    );
  }
}
