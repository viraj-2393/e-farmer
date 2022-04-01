class WeatherData{
   final double temperature;
   final double feels_like_temp;
   final int rain_percentage;
   final int humidity;
   final double wind_speed_kph;
   final int is_day;

   WeatherData({
     required this.temperature,
     required this.feels_like_temp,
     required this.rain_percentage,
     required this.humidity,
     required this.wind_speed_kph,
     required this.is_day
   });

  factory WeatherData.fromJSON(Map<String,dynamic> json){
    return WeatherData(
        temperature: json['temp_c'] != null ? json['temp_c'] : 0.0,
        feels_like_temp: json['feelslike_c'] != null ? json['feelslike_c'] : 0.0,
        rain_percentage: json['cloud'] != null ? json['cloud'] : 0,
        humidity: json['humidity'] != null ? json['humidity'] : 0,
        wind_speed_kph: json['wind_kph'] != null ? json['wind_kph'] : 0.0,
        is_day: json['is_day'] != null ? json['is_day']: 0
    );
  }
}