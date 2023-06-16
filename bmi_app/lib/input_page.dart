import 'package:bmi_calculator/custom_gender.dart';
import 'package:bmi_calculator/enum_gender.dart';
import 'package:bmi_calculator/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EnumGender? genderSelected;
  double height = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      colour: genderSelected == EnumGender.male
                          ? Color(kInActiveCardColor)
                          : Color(kActiveCardColor),
                      containerChild: CustomGender(
                        iconUsed: FontAwesomeIcons.person,
                        title: "MALE",
                      ),
                      setGender: () {
                        setState(() {
                          genderSelected = EnumGender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: genderSelected == EnumGender.female
                          ? Color(kInActiveCardColor)
                          : Color(kActiveCardColor),
                      containerChild: CustomGender(
                        iconUsed: FontAwesomeIcons.personDress,
                        title: "FEMALE",
                      ),
                      setGender: () {
                        setState(() {
                          genderSelected = EnumGender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: Color(kActiveCardColor),
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: kMinHeightSlider,
                      max: kMaxHeightSlider,
                      activeColor: Color(0xFFF9BCDD2),
                      inactiveColor: Color(0xFFFF8551),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round().toDouble();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      colour: Color(kActiveCardColor),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: Color(kActiveCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(kBottomContainerColor),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}