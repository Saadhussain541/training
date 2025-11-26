import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_class/class16/movie_service.dart';
class ClassMovie extends StatefulWidget {
  const ClassMovie({super.key});

  @override
  State<ClassMovie> createState() => _ClassMovieState();
}

class _ClassMovieState extends State<ClassMovie> {
  int page=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(page.toString()),
        leading: IconButton(onPressed: (){
          setState(() {
            if(page>1)
              {
                page--;
              }
          });
        }, icon: Icon(Icons.exposure_minus_1)),
        actions: [IconButton(onPressed: (){
          setState(() {
            page++;
          });
        }, icon: Icon(Icons.add))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(future: ApiMovie.getMovieData(pageNumber: page), builder: (context,snapshot){
            if(snapshot.hasError)
              {
                return Center(child: Icon(Icons.error),);
              }
            if(snapshot.connectionState==ConnectionState.waiting)
              {
                return Center(child: CircularProgressIndicator(),);
              }
            if(snapshot.hasData)
              {
                final data=jsonDecode(snapshot.data);
                final movieData=data['tv_shows'];

                return ListView.builder(
                    itemCount:movieData.length,
                    itemBuilder: (context,index){
                      final movieImage=movieData[index]['image_thumbnail_path'];
                      final movieNetwork=movieData[index]['network'];
                      final movieName=movieData[index]['name'];
                      final movieCountry=movieData[index]['country'];
                      final movieDate=movieData[index]['start_date'];

                  return  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(1, 9),
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                          children: [
                            Container(

                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: NetworkImage(movieImage),fit: BoxFit.cover)
                              ),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child:                    Container(
                                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                    color: Colors.black,
                                    child: Text(movieNetwork,style: TextStyle(color: Colors.white),)))
                          ],
                        ),
                        Text(movieName,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(movieDate,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                            Text(movieCountry,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                  );
                });
              }
            return Container();
          })
        ),
      ),
    );
  }
}
