import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 350, 20),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 40.0, color: Colors.black,),
                    onPressed: (){
                      Navigator.pushNamed(context, 'dashboard');
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10, right: 150),
                child: Text(
                  'Set up your profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 55.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Container(
                      height: 110.0,
                      width: 110.0,
                      child: RaisedButton(
                        child: Text('Add Personal Info', style: TextStyle(color: Colors.white),),
                        elevation: 10.0,
                        onPressed: null,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0,),
                  Container(
                    height: 110.0,
                    width: 110,
                    child: RaisedButton(
                      child: Text('Save your location', style: TextStyle(color: Colors.white),),
                      elevation: 10.0,
                      onPressed: null,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Container(
                      height: 110.0,
                      width: 110.0,
                      child: RaisedButton(
                        child: Text('Add Payment Preference', style: TextStyle(color: Colors.white),),
                        elevation: 10.0,
                        onPressed: null,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0,),
                  Container(
                    height: 110.0,
                    width: 110,
                    child: RaisedButton(
                      child: Text('Refer & Earn', style: TextStyle(color: Colors.white),),
                      elevation: 10.0,
                      onPressed: null,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
            ],
          )
      ),
    );
  }
}
