import 'package:flutter/material.dart';

class BillBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
//                'https://cdn.static-zoutons.com/images/originals/stores/BIG_BAZAAR_OFFERS_1569732967.jpg'
                'https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb'),
            fit: BoxFit.cover),
        color: Colors.red,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: CircleAvatar(
              radius: 70,
              child: Image.network(
                  'https://assets.simpleviewinc.com/simpleview/image/fetch/q_75/https://assets.simpleviewinc.com/simpleview/image/upload/crm/boulder/sprouts-logo-e4e8d80f5056a36_e4e8d8cf-5056-a36a-071fb0c1945e7c79.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 12,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.access_time,
                  ),
                ),
              ),
              Text('Today',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(8),
            child: TextField(
              textAlignVertical: TextAlignVertical.top,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  hintText: 'Search Sprouts store',
                  prefixIcon: Icon(Icons.search, color: Colors.green)),
            ),
          ),
        ],
      ),
    );
  }
}
