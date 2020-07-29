import 'package:flutter/material.dart';
import 'package:flutterapp/cart_app/container/item_card.dart';

class Carousel extends StatelessWidget {
  final List dataItems = [1,2,3,4,5];
  final String title;
  Carousel({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text(title,style: TextStyle(
                fontSize: 20
            )),
            FlatButton(
              onPressed: () {},
              splashColor: Colors.green[800],
              child: Text('View more',style: TextStyle(
                  fontSize: 20,
                color: Colors.green
              )),
            )
          ],),
          Container(
              height: 330,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return ItemCard(price:index);
                },
              )),
        ],
      ),
    );
  }
}