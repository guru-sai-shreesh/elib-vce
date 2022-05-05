import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          primaryColor: Colors.grey[50],
          // scaffoldBackgroundColor: Colors.cyan[100],
        ),
        home: HomeScreen());
  }
}
