import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<String> entries = <String>['Book 1', 'Book 2', 'Book 3'];
  final List<int> colorCodes = <int>[400, 300, 200];
  final List<bool> alreadyClicked = <bool>[false, false, false];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-VCE"),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
          backgroundColor: defaultTargetPlatform == TargetPlatform.android
              ? Colors.white
              : Colors.transparent,
        ),
        // appBar: AppBar(
        //   title: Text("E-VCE"),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        drawer: NavigationDrawer(),
        body: Container());
  }
}
