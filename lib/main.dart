import './button.dart';
import 'package:flutter/material.dart';
import './message.dart';

// A widget is a special type of object
// And we need classes to create objects
// in order to create widgets
// As an app is a widget containing other smaller widgets
void main() => runApp(MyApp());

//StatelessWidget class allows us to create our own widgets
//variables inside of a classs is known as 'Properties' and functions inside of a class
// is known as 'Method'
//in case of any internal changes this class is rebuilt
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _n = 0;
  message ob3 = message('Button4', 45, true, 5, 0xffecf0f1);
  void _setValue(int x) {
    setState(() {
      _n = x;
    });
    print(_n);
  }

  @override
  // but this class remains persistent
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff2c3e50),
        appBar: AppBar(
          title: message('My first App', 30, true, 0, 0xffecf0f1),
        ),
        body: Column(
          children: [
            message('Value of n is: $_n', 50, true, 10, 0xffecf0f1),
            Button(
              0xff3498db,
              () {
                _setValue(1);
              },
              msg: message('1', 45, true, 5, 0xff3498db),
            ),
            Button(
              0xff9b59b6,
              () {
                _setValue(2);
              },
              msg: message('2', 45, true, 5, 0xff9b59b6),
            ),
            Button(
              0xff34495e,
              () {
                _setValue(3);
              },
              msg: message('3', 45, true, 5, 0xffecf0f1),
            ),
            Button(
              0xff34495e,
              () {
                _setValue(4);
              },
              msg: message('4', 45, true, 5, 0xffecf0f1),
            ),
            Button(
              0xff9b59b6,
              () {
                _setValue(5);
              },
              msg: message('5', 45, true, 5, 0xffecf0f1),
            ),
          ],
        ),
      ),
    );
  }
}
