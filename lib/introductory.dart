import 'package:flutter/material.dart';
import 'dashboard.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 350, 20),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 40.0, color: Colors.black,),
                    onPressed: (){
                      // Will navigate to login screen.
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30, right: 150),
                child: Text(
                  'Benefits of using this Grocery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height:12.0 ,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Know us',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              SizedBox(height: 15.0,),
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(right:8,bottom: 30.0, top: 2.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, size: 50.0, color: Colors.white,),
                    onPressed: (){
                      Navigator.pushNamed(context, 'dashboard');
                    },
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
