import 'package:flutter/material.dart';

void main() {
  runApp(const RowWidget());
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Row Widget"),
          ),
          body: const ExpandedExample()),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              width: 100,
            )),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Expanded(
            child: Container(
          color: Colors.amber,
          width: 100,
        )),
      ]),
    );
  }
}
