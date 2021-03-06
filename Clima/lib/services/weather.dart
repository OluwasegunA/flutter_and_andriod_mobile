import '../services/location.dart';
import '../services/networking.dart';

const apiKey = 'a124aaaca394c52a6fa91569ae93d7c1';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async{
    NetworkHelper weather = NetworkHelper('$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    var data = await weather.getData();
    return data;
  }
  Future<dynamic> getLocationWeather() async{
    Location userLocation = Location();
    await userLocation.getCurrentLocation();

    NetworkHelper data = NetworkHelper('$openWeatherMapURL?lat=${userLocation.latitude}&lon=${userLocation.longitude}&appid=$apiKey&units=metric');
    var weatherData = await data.getData();
    return weatherData;
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
