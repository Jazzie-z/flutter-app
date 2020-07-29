import 'package:flutter/material.dart';
import 'package:flutterapp/WeatherInfo.dart';
import 'package:flutterapp/cart_app/collections/carousel.dart';
import 'package:flutterapp/cart_app/container/bill_board.dart';
import 'package:flutterapp/cart_app/container/purchase_type.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Big Bazaar"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                  Navigator.pushNamed(context, '/cart');
              },
            )
          ],
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            BillBoard(),
            PurchaseType(),
            Carousel(title: 'Top Brands'),
            Carousel(title: 'Best Sellers'),
            Carousel(title: 'Snacks & chocolates'),
            Carousel(title: 'Just for you')
          ],
        )));
  }
}
