import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {

    Location location = Location();
    await location.getCurrentLocation();

    print('Latitude: ${location.latitude ?? 'unknown'}');
    print('Longitude: ${location.longitude ?? 'unknown'}');


  }

  void getData() async {

    double lat = 56.4695993;
    double lon = 10.0014371;

    Uri apiCall = Uri.http('api.openweathermap.org', 'data/2.5/weather', {'lat': lat.toStringAsFixed(2), 'lon': lon.toStringAsFixed(2), 'appid': 'bcd5d3714b7ae41e0a5d5efbc5c21922'});
    http.Response response = await http.get(apiCall);

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
