import 'package:efarmer/models/WeatherData.dart';

class WeatherInfo{
  WeatherData _weatherData;
  WeatherInfo(this._weatherData);

  String get current_temp{
    return _weatherData.temperature.toString();
  }

  String get current_feels_like_temp{
    return _weatherData.feels_like_temp.toString();
  }

  int get rain_possibility{
    return _weatherData.rain_percentage;
  }

  int get humidity{
    return _weatherData.humidity;
  }

  String get wind_speed{
    return _weatherData.wind_speed_kph.toString();
  }

  bool get is_day{
    return _weatherData.is_day == 1 ? true : false;
  }
}