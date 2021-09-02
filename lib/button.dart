import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  int colorValue;
  String txt;
  bool isWidth = false;
  double marginValue;
  final Function valueSet;
  final StatelessWidget msg;
  Button(this.colorValue, this.valueSet, {@required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: this.msg,
      style: ElevatedButton.styleFrom(
        primary: Color(colorValue),
      ),
      onPressed: valueSet,
    ));
  }
}
