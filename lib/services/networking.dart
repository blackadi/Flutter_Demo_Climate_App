import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String URL;

  NetworkHelper(this.URL);

  Future getData() async {
    http.Response response = await http.get(URL);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
