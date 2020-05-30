import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'APP DEMO',
      theme: new ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: BottomNavigationWidget(),
    );
  }
}