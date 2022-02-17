import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange, )
            .copyWith( secondary: Colors.green, background: Colors.purple),
        scaffoldBackgroundColor: Colors.teal,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.yellow)),
        // backgroundColor: Colors.black,
        // colorSchemeSeed: ColorScheme.fromSwatch(backgroundColor: Colors.black)

        // primaryColor: Color(0x0A0E99),
        // secondaryHeaderColor: Colors.purple,

        // colorScheme:
      ),
      home: InputPage(),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
