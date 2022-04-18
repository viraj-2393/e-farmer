import 'package:efarmer/models/MarketData.dart';
import 'package:efarmer/services/webservices.dart';
import 'package:efarmer/viewmodels/MarketInfo.dart';
import 'package:flutter/material.dart';

class MarketDataViewModel extends ChangeNotifier{
  List<MarketInfo> marketInfo = [];
  MarketDataViewModel(){
    _loadMarketData();
  }

  void _loadMarketData() async{
    List<MarketData> marketData = await WebService(0.0,0.0).getMarketData();
    marketInfo = marketData.map((article) => MarketInfo(article)).toList();
    notifyListeners();
  }

}