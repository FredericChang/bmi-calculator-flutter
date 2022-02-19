import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98)
);
class cardChildWidget extends StatelessWidget {

  cardChildWidget({@required this.colour, this.icon, this.textName});

  final Color colour;
  final IconData icon;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: colour,
          size: 40.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(textName,
          style: labelTextStyle)
      ],
    );
  }
}
