import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final List items;
  final String type;
  CustomRadio({this.items,this.type});

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.items.map((item) => Radio(
        value: item,
        groupValue: widget.type,
      )).toList(),
    );
  }
}
