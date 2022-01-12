import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'SF-UI',
          ),
          bodyText2: TextStyle(
            fontFamily: 'SF-UI',
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
