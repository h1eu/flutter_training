import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(
      {required this.colour, this.containerChild, this.setGender});
  final Color colour;
  final Widget? containerChild;
  final VoidCallback? setGender;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: setGender,
    );
  }
}
