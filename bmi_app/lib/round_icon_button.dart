import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.child, required this.onClick});
  final IconData child;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(this.child),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF222831),
      onPressed: onClick,
    );
  }
}
