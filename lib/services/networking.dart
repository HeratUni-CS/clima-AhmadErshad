import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  // get data from API 
  Future getData() async {
    
    http.Response response = await http.get( url as Uri);

    if(response.statusCode == 200) {
      String data = response.body; 
      return jsonDecode(data);

    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}