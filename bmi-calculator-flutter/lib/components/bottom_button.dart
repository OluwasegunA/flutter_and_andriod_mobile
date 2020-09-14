import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String btnName;

  BottomButton({@required this.onPress, @required this.btnName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            btnName,
            style: kLargeText,
          ),
        ),
        color: KBottomCardColour,
        margin: EdgeInsets.only(top: 10.0),
//        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}