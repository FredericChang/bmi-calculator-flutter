import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const Color colorNumber = Color(0xFF1D1E33);
const Color bottomColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(colour : colorNumber)
              ),
              Expanded(
                  child: ReusableCard(colour : colorNumber)
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

//Refactor with StatelessWidget
class ReusableCard extends StatelessWidget {

  ///stateless could not be changed.
  ///this will allowed user to assign Color
  ///Initializing
  /// @required meant you have to add
  ReusableCard({@required this.colour});

  /// property
  /// Final could not be changed. verse Const keyword.
  final Color colour;

  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(// color: Colors.pink,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}

