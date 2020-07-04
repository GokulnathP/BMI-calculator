import 'package:flutter/material.dart';

import './constants.dart';
import './my_container.dart';
import './bmi_calculator.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BMICalculator cal = ModalRoute.of(context).settings.arguments;
    final bmi = cal.calculate();
    final result = cal.result();
    final des = cal.resultDes();
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'YOUR RESULT',
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
              color: activeContainerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: resultStyle,
                  ),
                  Text(
                    bmi,
                    style: bmiStyle,
                  ),
                  Text(
                    des,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              child: Center(
                  child: Text(
                'RE-CALCULATE',
                style: buttonStyle,
              )),
              color: bottomContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
