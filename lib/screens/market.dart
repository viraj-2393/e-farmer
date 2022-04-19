import 'package:efarmer/screens/homescreen.dart';
import 'package:efarmer/viewmodels/MarketDataViewModel.dart';
import 'package:efarmer/viewmodels/MarketInfo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Market extends StatelessWidget{
  static const route = "/market";
  List<MarketInfo> marketInfo = [];
  @override
  Widget build(BuildContext context) {
    marketInfo = Provider.of<MarketDataViewModel>(context).marketInfo;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffedf9f5),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacementNamed(HomeScreen.route);
          },
          icon: Icon(Icons.chevron_left,color: Color(0xff26C487),),
        ),//
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10,),
          Icon(Icons.notifications,color: Color(0xffFEBA48),),
          SizedBox(width: 10,)
        ],
      ),
      body: marketInfo.length == 0?
          Center(
            child: CircularProgressIndicator(),
          )
          :ListView.builder(
         itemCount: marketInfo.length,
         itemBuilder: (ctx,index){
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/images/food.png'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('State: '+marketInfo[index].state),
                        SizedBox(height: 5,),
                        Text('District: '+marketInfo[index].district),
                        SizedBox(height: 5,),
                        Text('Commodity: '+marketInfo[index].commodity),
                        SizedBox(height: 5,),
                        Text('Price: '+marketInfo[index].modal_price),
                        SizedBox(height: 5,),
                      ],
                    ),
                  )

                ],
              ),
            );
         },
      )
    );
  }
}