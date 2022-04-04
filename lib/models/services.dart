//class for fetching data from internet
//import http library
import 'package:bitcoin/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<List<Post>? > getPosts() async{
    //creating a client object
    var client = http.Client();

    //for parsing json
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    //using client object call get request
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }
  }
}