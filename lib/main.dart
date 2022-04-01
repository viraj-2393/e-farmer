import 'package:efarmer/screens/homescreen.dart';
import 'package:efarmer/screens/splashscreen.dart';
import 'package:flutter/material.dart';

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
      "/": (ctx) => HomeScreen(),
    },
  ));
}


