import 'package:efarmer/widget/flower.dart';
import 'package:efarmer/widget/weatherplates.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffedf9f5),
        leading: const Icon(Icons.menu,color: Color(0xff26C487),),
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
                          children: const [
                            SizedBox(height: 20,),
                            Text('38°C',style: TextStyle(color: Colors.white,fontSize: 25),),
                            Text('Max',style: TextStyle(color: Colors.white),),
                            SizedBox(height: 20,),
                            Text('35°C',style: TextStyle(color: Colors.white,fontSize: 25),),
                            Text('Feels like',style: TextStyle(color: Colors.white),)
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
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10,),
                                WeatherPlates(Icons.cloud,'No Rain','RAIN',Color(0xff5EB2F4)),
                                const SizedBox(height: 10,),
                                WeatherPlates(Icons.water_drop,'43%','HUMIDITY',Color(0xff4BA5BD)),
                                const SizedBox(height: 10,),
                                WeatherPlates(Icons.air,'9.4 Km/hr','WIND',Color(0xff5EEFC4)),
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
                        decoration: BoxDecoration(
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