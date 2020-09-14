import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      elevation: 0.0,
      onPressed: onPress,
    );
  }
}