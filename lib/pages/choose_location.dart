import 'package:flutter/material.dart';
import 'package:flutterapp/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location:'London',flag:'uk.png'),
    WorldTime(url: 'Europe/Berlin', location:'Berlin',flag:'berlin.png'),
    WorldTime(url: 'America/New_York', location:'New york',flag:'usa.png'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context,{
      'location':instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'iSDaytime': instance.iSDaytime
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Location'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return RaisedButton(
            onPressed: (){
              updateTime(index);
            },
            color: Colors.white,
            child: Text(locations[index].location),
          );
        },
      )
    );
  }
}
