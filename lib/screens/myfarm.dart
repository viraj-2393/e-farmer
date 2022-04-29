import 'package:flutter/material.dart';

class MyFarm extends StatelessWidget{
  static const route = "/myfarm";
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
      body:Column(
        children: [
          Container(
            width: double.infinity,
            child: SizedBox(
              height: 400,
              child: Image.asset('assets/images/rabi-kharif.jpg'),
            ),
          ),
          Text('More Features coming soon!')
        ],
      )
    );
  }
}