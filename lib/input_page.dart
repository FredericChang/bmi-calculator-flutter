import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuableCard.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color colorNumber = Color(0xFF1D1E33);
const inactivateColour = Color(0xFF111328);
const Color bottomColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  // Color maleCardColour = inactivateColour;
  // Color femaleCardColour = inactivateColour;
  //
  // void updatedColour(Gender selectedGender) {
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColour == inactivateColour) {
  //       femaleCardColour = colorNumber;
  //       maleCardColour = inactivateColour;
  //
  //     } else {
  //       femaleCardColour = inactivateColour;
  //     }
  //   }
  //   if (selectedGender == Gender.male ) {
  //     if (maleCardColour == inactivateColour) {
  //       maleCardColour = colorNumber;
  //       femaleCardColour = inactivateColour;
  //     } else {
  //       maleCardColour = inactivateColour;
  //     }
  //   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('Female');
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        colour : selectedGender == Gender.female ? colorNumber : inactivateColour,
                        cardChild: cardChildWidget(icon: FontAwesomeIcons.mars, colour: Colors.pink, textName: 'Female',),
                      ),
                    )
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('Male');
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour : selectedGender == Gender.male ? colorNumber : inactivateColour,
                        cardChild: cardChildWidget(icon: FontAwesomeIcons.facebook, colour: Colors.pink, textName: 'Male',),
                      ),
                    )
                ),
              ],
            )),
            Expanded(
                child: ReusableCard(colour : colorNumber)
            ),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(colour : colorNumber)
                ),
                Expanded(
                    child: ReusableCard(colour : colorNumber)
                ),
              ],
            )),

            Container(
              color: bottomColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        )
    );
  }
}