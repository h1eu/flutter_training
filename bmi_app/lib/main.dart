import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF222831),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Color(0xFF00ADB5),
          primarySwatch: Colors.blueGrey,
        ),
      ),
      home: InputPage(),
    );
  }
}
