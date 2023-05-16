import 'package:clima/services/location.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/services/networking.dart';

class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async {
    Uri apiCall = Uri.http('api.openweathermap.org', 'data/2.5/weather', {
      'q': cityName,
      'appid': kApiKey,
      'units': 'metric'
    });

    NetworkHelper networkHelper = NetworkHelper(apiCall: apiCall);

    var decodedData = await networkHelper.getData();
    return decodedData;

  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    Uri apiCall = Uri.http('api.openweathermap.org', 'data/2.5/weather', {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'appid': kApiKey,
      'units': 'metric'
    });

    NetworkHelper networkHelper = NetworkHelper(apiCall: apiCall);

    var decodedData = await networkHelper.getData();
    return decodedData;

  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}