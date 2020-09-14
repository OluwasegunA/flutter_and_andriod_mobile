import 'package:flutter/material.dart';
import '../constants.dart';


class IconContent extends StatelessWidget {
  final IconData usedIcon;
  final String gender;

  const IconContent({@required this.usedIcon, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          usedIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}