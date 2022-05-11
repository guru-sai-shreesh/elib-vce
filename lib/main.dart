import 'package:e_vce/firebase_options.dart';
import 'package:e_vce/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

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
