import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DisplaySubscription extends StatefulWidget {
  const DisplaySubscription({Key? key}) : super(key: key);

  @override
  State<DisplaySubscription> createState() => _DisplaySubscriptionState();
}

class _DisplaySubscriptionState extends State<DisplaySubscription> {
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
        child: Text("Subscription"),
      ),
    );
  }
}
