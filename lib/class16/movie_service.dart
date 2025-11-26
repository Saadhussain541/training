import 'package:http/http.dart' as http;
class ApiMovie
{
  static Future<dynamic> getMovieData({required int pageNumber}) async
  {
    var request = http.Request('GET', Uri.parse('https://www.episodate.com/api/most-popular?page=$pageNumber'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
     var data=await response.stream.bytesToString();
     print(data);
     return data;
  }
  else {
  print(response.reasonPhrase);
  }
  }
}