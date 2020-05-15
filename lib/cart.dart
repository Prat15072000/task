import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: <Widget>[
                Text('Shopping Cart'),
                SizedBox(height: 16.0),
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 12.0,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      child: Text('Food Item'),
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
