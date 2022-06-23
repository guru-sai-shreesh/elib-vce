import 'package:e_vce/screens/dashboard/homescreen.dart';
import 'package:e_vce/screens/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          primaryColor: Colors.grey[50],
          // scaffoldBackgroundColor: Colors.cyan[100],
        ),
        home: LoginScreen());
  }
}
