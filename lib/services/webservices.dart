import 'dart:convert';

import 'package:efarmer/models/MarketData.dart';
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
  
  Future<List<MarketData>> getMarketData() async{
    final url = Uri.parse('https://api.data.gov.in/resource/9ef84268-d588-465a-a308-a864a43d0070?api-key=579b464db66ec23bdd000001cdd3946e44ce4aad7209ff7b23ac571b&format=json&offset=0&limit=10');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final result = jsonDecode(response.body);
      List list = result['records'];
      return list.map((commodity) => MarketData.fromJSON(commodity)).toList();
    }else{
      throw Exception('Unable to get realtime data!');
    }
  }
}