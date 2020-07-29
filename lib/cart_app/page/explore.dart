import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List filter = [true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    FacilityChip(title:'Express delivery'),
                    FacilityChip(title:'Pick up'),
                    FacilityChip(title:'30 Min'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class FacilityChip extends StatefulWidget {
  final String title;
  final bool active;
  FacilityChip({this.title, this.active=true});
  @override
  _FacilityChipState createState() => _FacilityChipState();
}

class _FacilityChipState extends State<FacilityChip> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FilterChip(
        label: Text(widget.title),
        selected: _selected,
        onSelected: (value){
          setState(() {
            _selected = !_selected;
          });
        },

      ),
    );
  }
}
