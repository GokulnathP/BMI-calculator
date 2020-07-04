import 'package:flutter/material.dart';

import './input_page.dart';
import './result.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
      routes: {
        '/result': (ctx) => Result(),
      },
    );
  }
}
