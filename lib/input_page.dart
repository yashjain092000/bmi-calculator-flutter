import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const  bottomContainerHeight=80.0;
const activeCardColor=Color(0xFF1DE33);
const bottomContainerColor=Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour: activeCardColor,
                    cardChild: Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.mars,size:80,color:Colors.white,),


                      ]
                    ),
                  ),
                ),
                Expanded (
                  child: ReusableCard(colour:  activeCardColor),
                ),
              ],
            )),
        Expanded(
          child: ReusableCard(colour:  activeCardColor),
        ),
        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour:  activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour:  activeCardColor),
                ),
              ],
            ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top:10),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
