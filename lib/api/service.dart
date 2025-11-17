import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService
{
  static Future<List> getPost() async
  {
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    final data=jsonDecode(response.body);
    final postData=[];
    if(response.statusCode==200)
      {
        for(Map i in data)
          {
            postData.add(i);
          }

        return postData;
      }
    else
      {
        throw Exception('failed to load post data');
      }
  }

  static Future<dynamic> getMovie() async
  {
    try
        {
          var request = http.Request('GET', Uri.parse('https://www.episodate.com/api/most-popular?page=1'));


          http.StreamedResponse response = await request.send();

          if (response.statusCode == 200) {
            var res=await response.stream.bytesToString();
            return res;
          }
          else {
            print(response.reasonPhrase);
          }
        }
        catch(e)
    {
      print(e);
    }
  }

  static Future<dynamic> getDescription({required int id}) async
  {
    var request = http.Request('GET', Uri.parse('https://www.episodate.com/api/show-details?q=$id'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res=await response.stream.bytesToString();
      return res;
  }
  else {
  print(response.reasonPhrase);
  }

  }

}