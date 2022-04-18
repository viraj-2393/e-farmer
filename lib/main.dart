import 'package:efarmer/screens/homescreen.dart';
import 'package:efarmer/screens/market.dart';
import 'package:efarmer/screens/resources.dart';
import 'package:efarmer/screens/splashscreen.dart';
import 'package:efarmer/viewmodels/MarketDataViewModel.dart';

import 'package:efarmer/viewmodels/WeatherDataViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Map<int, Color> color =
  {
    50:Color.fromRGBO(38,196,134, .1),
    100:Color.fromRGBO(38,196,134, .2),
    200:Color.fromRGBO(38,196,134, .3),
    300:Color.fromRGBO(38,196,134, .4),
    400:Color.fromRGBO(38,196,134, .5),
    500:Color.fromRGBO(38,196,134, .6),
    600:Color.fromRGBO(38,196,134, .7),
    700:Color.fromRGBO(38,196,134, .8),
    800:Color.fromRGBO(38,196,134, .9),
    900:Color.fromRGBO(38,196,134, 1),
  };
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: MaterialColor(0xff26c486,color),
    ),
    routes: {
      "/": (ctx) => ChangeNotifierProvider(
         create: (ctx) => WeatherDataViewModel(),
         child: HomeScreen(),
      ),
      Resources.route: (ctx) => Resources(),
      Market.route: (ctx) => ChangeNotifierProvider(
        create: (ctx) => MarketDataViewModel(),
        child: Market(),
      ),
    },
  ));
}


