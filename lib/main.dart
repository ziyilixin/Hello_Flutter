import 'package:flutter/material.dart';
import 'package:hello_flutter/base_widget.dart';
import 'package:hello_flutter/layout_demo.dart';
import 'package:hello_flutter/listview_demo.dart';
import 'package:hello_flutter/state_mag_demo.dart';
import 'model/car.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StateManagerDemo();
  }
}