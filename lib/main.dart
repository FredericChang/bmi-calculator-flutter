import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.teal,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.yellow)),
        primaryColor: Colors.orange,
      ),
      // ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange, )
      //       .copyWith( secondary: Colors.green, background: Colors.purple),
      //   scaffoldBackgroundColor: Colors.teal,
      //   textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.yellow)),
      //   // backgroundColor: Colors.black,
      //   // colorSchemeSeed: ColorScheme.fromSwatch(backgroundColor: Colors.black)
      //
      //   // primaryColor: Color(0x0A0E99),
      //   // secondaryHeaderColor: Colors.purple,
      //
      //   // colorScheme:
      // ),
      home: InputPage(),
    );
  }
}

