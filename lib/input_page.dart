import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1DE33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor=inactiveCardColor;
  Color femaleCardColor=inactiveCardColor;
//1 for male 2 for female
  void updateColor(int gender){
    if(gender==1){
      if(maleCardColor==inactiveCardColor){
        maleCardColor=activeCardColor;
      }
      else{
        maleCardColor=inactiveCardColor;
      }
    }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      print('male pressed');
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      print('female pressed');
    },

                    child: ReusableCard(colour: femaleCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),),
                  ),
                ),
              ],
            )),
        Expanded(
          child: ReusableCard(colour: activeCardColor),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ],
      ),
    );
  }
}

