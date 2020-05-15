import 'package:flutter/material.dart';
import 'cart.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      appBar: AppBar(
        title: Text('INTERN'),
        backgroundColor: Colors.pink[900],
        actions: <Widget>[
          FlatButton(
            child: Text('Light', style: TextStyle(color: Colors.black),),
            color: Colors.white,
            onPressed: (){
              setState(() {
                darkMode = false;
              });

            },
          ),
          new FlatButton(
            color: Colors.black,
            child: Text('Dark', style: TextStyle(color: Colors.white),),
            onPressed: () {
              setState(() {
                darkMode = true;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Sample'),
              accountEmail: Text('Sample@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Profile'),
                onTap: (){
                  Navigator.pushNamed(context, 'profile_screen');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text(
                  'Orders History',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onTap: (){
//                  Navigator.pushNamed(context, 'order_screen');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                trailing: Icon(Icons.exit_to_app),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onTap: (){
//                  _auth.signOut();
                  Navigator.pushNamed(context, 'welcome_screen');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                trailing: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){
//                  Navigator.pushNamed(context, 'settings_screen');
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'cart');
        },
        backgroundColor: Colors.pink[900],
        child: Icon(Icons.shopping_cart),
      ),
      body: SafeArea(
        child:
        ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0),
              child: Text('Recent Products',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0, color: Colors.blueGrey),
              ),
            ),
            Column(
              children: <Widget>[
              ],
            )],
        ),
      ),
    );
  }
}
