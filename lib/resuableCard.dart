import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
//Refactor with StatelessWidget
class ReusableCard extends StatelessWidget {

  ///stateless could not be changed.
  ///this will allowed user to assign Color
  ///Initializing
  /// @required meant you have to add
  ReusableCard({@required this.colour, this.cardChild});

  /// property
  /// Final could not be changed. verse Const keyword.
  final Color colour;
  final Widget cardChild;


  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(// color: Colors.pink,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
