import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.displayText});

  final String displayText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            displayText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
