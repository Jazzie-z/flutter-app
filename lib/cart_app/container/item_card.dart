import 'dart:math';

import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final int price;
  final images = [
    'https://images.heb.com/is/image/HEBGrocery/001865742',
    'https://5.imimg.com/data5/KU/XU/GLADMIN-31033820/pringles-500x500.png',
    'https://bajarhaat.com/wp-content/uploads/2019/01/Hide-and-Seek-biscuits-small.jpg',
    'https://nearbyshop.in/images/thumbnails/500/500/detailed/14/image_43.jpg',
    'https://5.imimg.com/data5/QR/AN/MY-5742893/maggi-noodle-500x500.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/6182emaYXFL._SX569_.jpg',
    'https://5.imimg.com/data5/FY/JU/MY-40369435/diary-milk-chocolate-90-gm-500x500.jpg',
    'https://assetscdn1.paytm.com/images/catalog/product/F/FA/FASNESTLE-SLIM-BIGB985832838EB0E4/1561505905796_2.jpg',
    'https://i5.walmartimages.com/asr/2165a20c-c34f-4230-89b9-8c65195ce0c4_1.ab497e4b43a89efb9f1f00617e373626.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff',
    'https://5.imimg.com/data5/OE/JY/MY-37427162/selection_032-500x500.png'
  ];
  ItemCard({this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  width: 150,
                  height:180,
                  padding: EdgeInsets.all(8),
                  child: Image.network(
                    images[(Random().nextInt(images.length))],
//                    'https://5.imimg.com/data5/KU/XU/GLADMIN-31033820/pringles-500x500.png',
//                  'https://images.heb.com/is/image/HEBGrocery/001865742',
                    width: 120,
                  ),
                ),
                CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(1),
                      child: Icon(Icons.add),
                      onTap: () {
                        print('tap');
                      },
                    ))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$price.69',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('Pringles Potato'),
                Text('Crisps Chips'),
                Text('Original'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 16),
                        children: [
                          WidgetSpan(
                              child: Icon(
                                Icons.flash_on,
                                color: Colors.deepOrangeAccent,
                                size: 18,
                              )),
                          TextSpan(
                            text: "Free Delivery",
                          ),
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}