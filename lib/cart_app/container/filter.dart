import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  static String getFormatTime (DateTime time) {
    return DateFormat('dd-MM-yyyy').format(time);
  }
  String selectedDate = getFormatTime(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            width: 200,
            child: Card(
              child: ListTile(
                trailing: Icon(
                  Icons.store,
                  color: Colors.blueAccent,
                ),
                title: Text('Select Store'),
                onTap: () {
                  Navigator.pushNamed(context, '/store');
                },
              ),
            )),
        Container(
            width: 200,
            child: Card(
              child: ListTile(
                trailing: Icon(
                  Icons.calendar_today,
                  color: Colors.blueAccent,
                ),
                title: Text(selectedDate),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 7))
                  ).then((date){
                    setState(() {
                      selectedDate = getFormatTime(date);
                    });
                  });
                },
              ),
            ))
      ],
    );
  }
}
