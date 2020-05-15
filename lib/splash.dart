import 'dart:async';
import 'package:flutter/material.dart';
import 'introductory.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, 'introductory'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.blue, Colors.purple, Colors.blueGrey])
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10.0,),
                          Text('Grocery', style: TextStyle(color: Colors.white,fontSize: 29, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
