import 'package:flutter/material.dart';


class CountClick extends StatefulWidget{
  const CountClick({super.key});

  @override
  State<CountClick> createState() => _CountState();

}

class _CountState extends State<CountClick>{
  int count = 0;
  void _clickCount() {
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: _clickCount,
            child: const Text(
              "Click"
            )),
        const SizedBox(width: 16,),
        Text("Count: $count")
      ],
    );
  }
}