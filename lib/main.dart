import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        body: Magic8Ball(),
      ),
    ));

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNum = 1;

  void randomizeBall(){
    ballNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNum.png'),
              onPressed: (){
                setState(() {
                  randomizeBall();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
