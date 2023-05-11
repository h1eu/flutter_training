import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Container example",
    home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.blue[500],
        title: const Text("Container Example"),
        centerTitle: true,
      ),
      body: Container(
        width: 400,
        height: 200,
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            // border: Border.all(width: 1, color: Colors.black26),
            // borderRadius: const BorderRadius.all(Radius.circular(10)),
            // boxShadow: const [
            //   BoxShadow(
            //       color: Colors.blue,
            //       offset: Offset(10, 10),
            //       blurRadius: 20,
            //       spreadRadius: 30)
            // ],
            color: Colors.orange[300],
            gradient: const LinearGradient(
              colors: [Colors.yellow, Colors.blue],
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              // stops: [1, 1]
            )),
        // constraints: const BoxConstraints(maxHeight: 200, maxWidth: 400),
        child: const Text(
          "This is Containerssssssssssssssssssss",
        ),
      ),
    ),
  ));
}
