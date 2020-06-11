import 'dart:io';
import 'package:flutter/cupertino.dart';
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
      debugShowCheckedModeBanner: false,
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
        mainAxisAlignment: MainAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button('C', Colors.grey, Colors.black),
              button('+/-', Colors.grey,Colors.black),
              button('%', Colors.grey,Colors.black),
              button('\u00F7', Colors.orange,Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button('7', Colors.grey.shade900,Colors.white),
              button('8', Colors.grey.shade900, Colors.white),
              button('9', Colors.grey.shade900,Colors.white),
              button('\u00D7', Colors.orange,Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button('4', Colors.grey.shade900,Colors.white),
              button('5', Colors.grey.shade900,Colors.white),
              button('6', Colors.grey.shade900,Colors.white),
              button('-', Colors.orange,Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button('1', Colors.grey.shade900,Colors.white),
              button('2', Colors.grey.shade900,Colors.white),
              button('3', Colors.grey.shade900,Colors.white),
              button('+', Colors.orange,Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buttonZero('0', Colors.grey.shade900,Colors.white),
              button('.', Colors.grey.shade900,Colors.white),
              button('=', Colors.grey.shade900,Colors.white),
            ],
          )
        ],
      ),
    );
  }
  Widget button(text, Color color, txtColor){
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: RaisedButton(
        child: Text(text,
        style: TextStyle(
          color: txtColor,
          fontSize: 20,
        ),),
        onPressed: (){

        },
        color: color,
        padding: EdgeInsets.all(20),
        shape: CircleBorder(),
      ),
    );
  }
  Widget buttonZero(text, Color color, txtColor){
    return Container(
      child: RaisedButton(
        child: Text(text,
          style: TextStyle(
            color: txtColor,
            fontSize: 20,
          ),),
        onPressed: (){

        },
        color: color,
        padding: EdgeInsets.only(left: 85, right: 85, top: 20, bottom: 20),
        shape: StadiumBorder(),
      ),
    );
  }
}

