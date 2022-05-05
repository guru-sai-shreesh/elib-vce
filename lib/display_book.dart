import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DisplayBook extends StatefulWidget {
  const DisplayBook({Key? key}) : super(key: key);

  @override
  State<DisplayBook> createState() => _DisplayBookState();
}

class _DisplayBookState extends State<DisplayBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-VCE"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        backgroundColor: defaultTargetPlatform == TargetPlatform.android
            ? Colors.deepPurpleAccent
            : Colors.transparent,
      ),
      body: Center(
        child: Text("Book"),
      ),
    );
  }
}
