import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuableCard.dart';
import 'icon_content.dart';
import 'constants.dart';


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
  Color maleCardColour = kInactivateColour;
  Color femaleCardColour = kInactivateColour;

  void updatedColour(Gender selectedGender) {
    if (selectedGender == Gender.female) {
      if (femaleCardColour == kInactivateColour) {
        femaleCardColour = kActivateColour;
        maleCardColour = kInactivateColour;

      } else {
        femaleCardColour = kInactivateColour;
      }
    }
    if (selectedGender == Gender.male ) {
      if (maleCardColour == kInactivateColour) {
        maleCardColour = kActivateColour;
        femaleCardColour = kInactivateColour;
      } else {
        maleCardColour = kInactivateColour;
      }
    }
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
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour : selectedGender == Gender.female ? kActivateColour : kInactivateColour,
                      cardChild: cardChildWidget(icon: FontAwesomeIcons.mars, colour: Colors.pink, textName: 'Female',),
                    )
                ),
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour : selectedGender == Gender.male ? kActivateColour : kInactivateColour,
                      cardChild: cardChildWidget(icon: FontAwesomeIcons.facebook, colour: Colors.pink, textName: 'Male',),
                    )
                ),
              ],
            )),
            Expanded(
                child: ReusableCard(
                  colour : kActivateColour,
                  cardChild: Column(
                    children: <Widget>[
                      Text('Height'),
                    ],
                  ),
                )
            ),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(colour : kActivateColour)
                ),
                Expanded(
                    child: ReusableCard(colour : kActivateColour)
                ),
              ],
            )),

            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        )
    );
  }
}