import 'dart:convert';

import 'package:efarmer/models/WeatherData.dart';
import 'package:http/http.dart' as http;

class WebService{
  final double latitude;
  final double longitude;
  WebService(this.latitude,this.longitude);
  Future<WeatherData> getWeatherData() async{
    final url = Uri.parse('https://api.weatherapi.com/v1/current.json?key=7d982cd78d484e7c925155445223103&q=${latitude},${longitude}');
    final response = await http.get(url);
    if(response.statusCode == 200){
       final result = jsonDecode(response.body);
       return WeatherData.fromJSON(result['current']);
    }
    else{
      throw Exception('Unable to get realtime data!');
    }
  }
}