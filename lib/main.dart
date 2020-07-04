import 'package:flutter/material.dart';
import 'package:fluttercartlogic/models/cart.dart';
import 'package:fluttercartlogic/models/order.dart';
import 'package:fluttercartlogic/screens/cart_screen.dart';
import 'package:fluttercartlogic/screens/homepage.dart';
import 'package:fluttercartlogic/screens/pdf_detail.dart';
import 'package:provider/provider.dart';

import 'models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Product(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Cart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
