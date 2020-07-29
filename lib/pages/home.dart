import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty?data: ModalRoute.of(context).settings.arguments;
    String bgImage = data['iSDaytime']? 'space-2.jpg' : 'space-1.jpg';
    return Scaffold(
      backgroundColor: data['iSDaytime']?Colors.black:Colors.blue[900],
      body:SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,120,0,0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    print(result);
                    setState(() {
                      data={
                        'time':result['time'],
                        'location':result['location'],
                        'iSDaytime': result['iSDaytime']
                      };
                    });
                  },
                      icon: Icon(Icons.edit_location, color: Colors.grey[200],),
                      label: Text('Edit location', style: TextStyle(
                        color: Colors.grey[200]
                      ),)
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(data['location'],style:TextStyle(
                        fontSize: 20,letterSpacing: 2,
                        color: Colors.grey[200]
                      )),

                    ],
                  ),
                  SizedBox(height: 20),
                  Text(data['time'], style:TextStyle(
                    fontSize: 66,
                    color: Colors.grey[200]
                  )),

                ],
              ),
            ),
          ))
    );
  }
}
