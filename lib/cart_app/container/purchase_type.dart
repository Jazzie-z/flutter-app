import 'package:flutter/material.dart';

class PurchaseType extends StatefulWidget {
  @override
  _PurchaseTypeState createState() => _PurchaseTypeState();
}

class _PurchaseTypeState extends State<PurchaseType> {
  final List types = ['Delivery', 'Pick Up'];
  String _selected = 'Delivery';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Container(
            color: Colors.orange,
            child: Row(
              children: types
                  .map((type) => Expanded(
                        child: Container(
                          height: 40,
                          child: FlatButton(
                            color:
                                _selected == type ? Colors.green : Colors.white,
                            splashColor: Colors.green[800],
                            onPressed: () {
                              setState(() {
                                _selected = type;
                              });
                            },
                            child: Text(
                              type.toUpperCase(),
                              style: TextStyle(
                                color: _selected == type
                                    ? Colors.white
                                    : Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
