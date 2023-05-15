import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {

  final Uri apiCall;

  NetworkHelper({required this.apiCall});

  Future getData() async {

    http.Response response = await http.get(apiCall);

    if (response.statusCode == 200) {

      String data = response.body;
      return jsonDecode(data);

    } else {
      return null;
    }

  }

}