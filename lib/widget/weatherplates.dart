import 'package:flutter/material.dart';

class WeatherPlates extends StatelessWidget{
  final IconData icon;
  final String headline;
  final String subtext;
  final Color color;
  WeatherPlates(this.icon,this.headline,this.subtext,this.color);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color//Color(0xff5EB2F4)
          ),
          child: SizedBox(
              height: 40,
              width: 40,
              child: Icon(icon,color: Colors.white,)//Image.asset('assets/images/fertilizer.png',fit: BoxFit.contain,),
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(headline,style: TextStyle(fontSize: 18,color: Colors.white),),
            Text(subtext,style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        )
      ],
    );
  }
}