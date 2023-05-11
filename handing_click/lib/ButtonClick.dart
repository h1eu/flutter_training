
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonClick extends StatelessWidget{
  const ButtonClick({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: (){
        Fluttertoast.showToast(
          msg: "Long Press",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.amberAccent,
          textColor: Colors.black,
          fontSize: 16.0
        );
      },
      onTap: (){
        Fluttertoast.showToast(
            msg: "tap",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.amberAccent,
            textColor: Colors.black,
            fontSize: 16.0
        );
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500]
        ),
        child: const Center(
          child: Text("Click"),
        ),
      ),
    );
  }

}