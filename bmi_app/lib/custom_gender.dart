import 'package:flutter/material.dart';
import 'constants.dart';

class CustomGender extends StatelessWidget {
  CustomGender({required this.iconUsed, required this.title});
  final IconData iconUsed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconUsed,
          size: kIconSize,
        ),
        SizedBox(
          height: distance,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
