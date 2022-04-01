import 'package:flutter/material.dart';

class Flower extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            children:[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                ),
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/wheat.png',fit: BoxFit.contain,),
                        ),
                        const Text('My Farm')
                      ],
                    ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/images/market.png',fit: BoxFit.contain,),
                      ),
                      const Text('Market')
                    ],
                  )
              )

            ]

        ),
        Row(
            children:[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/pay.png'),
                    ),
                    const Text('Loan')
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/images/online-lesson.png'),
                      ),
                      const Text('Resources')
                    ],
                  )
              )

            ]

        )
      ],
    );
  }
}