import 'package:flutter/material.dart';

class message extends StatelessWidget {
  String msg;
  double size;
  bool isWidth = false;
  double marginValue;
  int colorValue;
  message(this.msg, this.size, this.isWidth, this.marginValue, this.colorValue);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: isWidth == true ? double.infinity : null,
        margin: EdgeInsets.all(marginValue),
        child: Text(
          msg,
          style: TextStyle(fontSize: this.size, color: Color(0xffecf0f1)),
          textAlign: TextAlign.center,
        ));
  }
}
