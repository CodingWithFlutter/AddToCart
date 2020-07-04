import 'package:flutter/material.dart';
import 'package:fluttercartlogic/screens/cart_screen.dart';
import 'package:fluttercartlogic/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Flutter Cart"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart, size: 30,), onPressed: ()=>Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body: HomeBody()
    );
  }
}
