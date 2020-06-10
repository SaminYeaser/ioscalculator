import 'dart:io';
import 'package:flutter/material.dart';


void main(){
  runApp(IOSCalculator());
}

class IOSCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: IosCal(),
    );
  }
}
class IosCal extends StatefulWidget {
  @override
  _IosCalState createState() => _IosCalState();
}

class _IosCalState extends State<IosCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('123',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),),
              )
            ],
          ),
          Row(
            children: <Widget>[
              button('C', Colors.grey),
              button('+/-', Colors.grey),
              button('%', Colors.grey),
              button('\u00F7', Colors.orange)
            ],
          ),
          Row(
            children: <Widget>[
              button('7', Colors.grey),
              button('8', Colors.grey),
              button('9', Colors.grey),
              button('X', Colors.orange)
            ],
          )
        ],
      ),
    );
  }
  Widget button(text, Color color){
    return Container(
      child: RaisedButton(
        child: Text(text),
        onPressed: (){

        },
        color: color,
      ),
    );
  }
}

