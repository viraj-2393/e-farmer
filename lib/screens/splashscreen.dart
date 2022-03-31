import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  static const routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffedf9f5),
        body:Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/agriculture.png'),
                  ) ,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('E - farmer',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),)
              ]
          ),
        )
    );
  }
}