import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tutorial Widget",
      home: Scaffold(
        appBar: AppBar(title: const Text("Tutorial Demo")),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
