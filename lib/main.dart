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

  dynamic text = '0';
  dynamic numOne = 0;
  dynamic numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(text,
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
          calculation(text);
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
        calculation(text);
        },
        color: color,
        padding: EdgeInsets.only(left: 90, right: 85, top: 20, bottom: 20),
        shape: StadiumBorder(),
      ),
    );
  }
  void calculation(btntxt){
    if(btntxt == 'C'){
       text = '0';
       numOne = 0;
       numTwo = 0;

       result = '';
       finalResult = '';
       opr = '';
       preOpr = '';
    }


    else if(opr == '=' && preOpr == '='){
      if(preOpr == '+'){
        result = (numOne + numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(preOpr == '\u00D7' || preOpr == '*'){
        result = (numOne * numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(preOpr == '\u00F7' || preOpr == '/'){
        result = (numOne / numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(preOpr == '-'){
        result = (numOne - numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(preOpr == '%'){
        result = {numOne * (numTwo/100)}.toString();
        finalResult = result;
        numOne = double.parse(result);
      }
    }


    else if(btntxt == '+' || btntxt == '-' || btntxt == '/' || btntxt == '*' || btntxt =='\u00F7' || btntxt == '\u00D7' || btntxt == '=' || btntxt == '%'){
      if(numOne == 0){
        numOne = double.parse(result);
      }else{
        numTwo = double.parse(result);
      }
      if(opr == '+'){
        result = (numOne + numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }
      else if(opr == '\u00D7' || opr == '*'){
        result = (numOne * numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }
      else if(opr == '\u00F7' || opr == '/'){
        result = (numOne/numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(opr == '-'){
        result = (numOne - numTwo).toString();
        finalResult = result;
        numOne = double.parse(result);
      }else if(opr == '%'){
        result = {numOne * (numTwo/100)}.toString();
        finalResult = result;
        numOne = double.parse(result);
      }
      preOpr = opr;
      opr = btntxt;
      result = '';
    }

    else{
      result = result + btntxt;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }
}

