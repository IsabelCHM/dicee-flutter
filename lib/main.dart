import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changeDice () {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //Padding should be around images, NOT the expanded obj
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  print('Aloha leftie');
                  changeDice();
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  print('Aloha rightie');
                  changeDice();
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class DicePageStless extends StatelessWidget {
  int leftdicenumber = 5;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    leftdicenumber = 2;
    rightdicenumber = 3;
    return Center(
      child: Row(
        children: [
          Expanded(
            //Padding should be around images, NOT the expanded obj
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  print('Aloha leftie');
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  print('Aloha rightie');
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
