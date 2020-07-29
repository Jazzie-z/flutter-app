import 'package:flutter/material.dart';
import 'package:flutterapp/cart_app/collections/carousel.dart';
import 'package:flutterapp/cart_app/container/filter.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Filter(),
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Carousel(title: 'Snacks');
            },
          ),
        )
      ],
    );
  }
}
