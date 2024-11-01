import 'package:flutter/material.dart';
import 'dart:math';

int ballNumber = 1;

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[400],
        title: const Text(
          "Ask Me Anything",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}

