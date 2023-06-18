import 'package:bmi_calculator/custom_gender.dart';
import 'package:bmi_calculator/enum_gender.dart';
import 'package:bmi_calculator/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EnumGender? genderSelected;
  double height = 160;
  int weight = 74;
  int age = 19;
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color(0xFFF9BCDD2),
                        inactiveTrackColor: Color(0xFFFF8551),
                        thumbColor: Color(0xFFFF8551),
                        overlayColor: Color(0x29FF8551),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                      ),
                      child: Slider(
                        value: height,
                        min: kMinHeightSlider,
                        max: kMaxHeightSlider,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round().toDouble();
                          });
                        },
                      ),
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
                      containerChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                child: FontAwesomeIcons.minus,
                                onClick: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                child: FontAwesomeIcons.plus,
                                onClick: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      colour: Color(kActiveCardColor),
                      containerChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                child: FontAwesomeIcons.minus,
                                onClick: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                child: FontAwesomeIcons.plus,
                                onClick: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
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
