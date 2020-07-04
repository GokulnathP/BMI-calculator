import 'package:flutter/material.dart';

import './constants.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  MyIcon({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelStyle,
        )
      ],
    );
  }
}
