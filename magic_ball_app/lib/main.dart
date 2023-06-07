import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallApp(),
      ),
    );

class BallApp extends StatelessWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask Me Anything"),
      ),
      backgroundColor: Colors.blue,
      body: BallMagic(),
    );
  }
}

class BallMagic extends StatefulWidget {
  const BallMagic({Key? key}) : super(key: key);

  @override
  State<BallMagic> createState() => _BallMagicState();
}

class _BallMagicState extends State<BallMagic> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
