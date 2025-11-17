// FutureBuilder
//
//
// Client 
// Server
//
//
// Button (Login) =>Click (email,password) =>Server
//
// Client =>(Response) =>Server
//
// Status Code = (200,201,202) =>Success
//
// Status Code=500 (Server is not runnig)
//
// Status Code =404 (APi not found , Server is not found)
//
//
// Function => http =>get,post,put,delete

//
// Api =>loading =>Loader
// error=> Error
// success=>Ui show

// async
// await

// sync
// async



import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  
  Future<String> getData() async
  {
    await Future.delayed(Duration(seconds: 5));
    return "Saad";
    
    //Ui 5 second Loader
    //Error (error behalf muje ui me koi Ui dekhana hai)
    //success ui show
    
  }

  Future func2() async
  {
    print('Saad');
    print('Ahmed');
    print('Usama');
  }
  void func1() async
  {
    print('Line 1');
    await func2();
    print('Line2');
    print('Line 3');
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: getData(), builder: (context,snapshot){
        
        if(snapshot.hasError)
          {
            return Center(child: Icon(Icons.error),);
          }
        
        if(snapshot.connectionState==ConnectionState.waiting)
          {
            return Center(child: CircularProgressIndicator());
            
          }

        if(snapshot.hasData)
          {
            return Center(child: Text(snapshot.data.toString()),);
          }
        
        
        
        
        return Container(); //Else
      }),
    );
  }
}



