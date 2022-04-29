import 'package:efarmer/screens/best_deals.dart';
import 'package:efarmer/screens/resources.dart';
import 'package:efarmer/viewmodels/WeatherDataViewModel.dart';
import 'package:efarmer/widget/flower.dart';
import 'package:efarmer/widget/weatherplates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/WeatherInfo.dart';

class HomeScreen extends StatelessWidget{
  static const route = "/homescreen";
  @override
  Widget build(BuildContext context) {
    final dataToDisplay = Provider.of<WeatherDataViewModel>(context);
    final WeatherInfo realtimeData = dataToDisplay.weatherInfo;
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(child: Text('E-farmer Menu',style: TextStyle(color: Colors.white,fontSize: 30),),),
            ),
            ListTile(
              title: const Text('Get Loan'),
              onTap: () {
                Navigator.of(context).pushNamed(BestDeals.route);
              },
            ),
            ListTile(
              title: const Text('Farming Resources'),
              onTap: () {
                Navigator.of(context).pushNamed(Resources.route);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffedf9f5),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10,),
          Icon(Icons.notifications,color: Color(0xffFEBA48),),
          SizedBox(width: 10,)
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:Container(
                        height: 220,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(20))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(realtimeData.is_day?'assets/images/sun.png':'assets/images/half-moon.png',fit: BoxFit.contain,),
                            ),
                            const SizedBox(height: 20,),
                            Text('${realtimeData.current_temp}°C',style: TextStyle(color: Colors.white,fontSize: 25),),
                            const Text('Max',style: TextStyle(color: Colors.white),),
                            const SizedBox(height: 20,),
                            Text('${realtimeData.current_feels_like_temp}°C',style: TextStyle(color: Colors.white,fontSize: 25),),
                            const Text('Feels like',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ) ,
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 20,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [
                              0.4,
                              0.9,
                            ],
                            colors: [
                              Color(0xFF22B97D),
                              Color(0xFF229064),
                            ],
                          )
                    ),
                    ),
                   const SizedBox(width: 10,),
                    Expanded(
                      child:Container(
                        height: 220,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20))
                        ),
                          child:Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //const SizedBox(height: 10,),
                                WeatherPlates(Icons.cloud,'${realtimeData.rain_possibility}%','RAIN',const Color(0xff5EB2F4)),
                                const SizedBox(height: 10,),
                                WeatherPlates(Icons.water_drop,'${realtimeData.humidity}%','HUMIDITY',const Color(0xff4BA5BD)),
                                const SizedBox(height: 10,),
                                WeatherPlates(Icons.air,'${realtimeData.wind_speed} Km/hr','WIND',const Color(0xff5EEFC4)),
                              ],
                            ),
                          )
                      ) ,
                    )

                  ],
                ),
              )

            ],
          ),
          Container(
            width: double.infinity,
            height: 350,
            //color: Colors.white,
            child:Stack(
                  children: [
                    Center(
                      child:Container(
                        width: 200,
                        height: 200,
                        child: Flower(),
                      ) ,
                    ),
                    Center(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFEBA48),
                        ),
                      ),
                    )
                  ],
                  ) ,
          )

        ],
      ),
    );
  }
}