import 'package:e_vce/my_attendence/attendence.dart';
import 'package:e_vce/my_attendence/attendence_percentage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation_drawer.dart';
import '../widget/custom_tab_indicator.dart';

class MyAttendence extends StatefulWidget {
  @override
  State<MyAttendence> createState() => _MyAttendenceState();
}

class _MyAttendenceState extends State<MyAttendence>
    with TickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Attendence"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Percentage"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).popUntil(ModalRoute.withName("/"));
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("E-VCE"),
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
            backgroundColor: defaultTargetPlatform == TargetPlatform.android
                ? Colors.deepPurpleAccent
                : Colors.transparent,
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.all(0),
              indicatorPadding: EdgeInsets.all(0),
              indicator: RoundedRectangleTabIndicator(
                  weight: 2, width: 10, color: Colors.black),
              labelStyle: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              tabs: myTabs,
            ),
          ),
          // appBar: AppBar(
          //   title: Text("E-VCE"),
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          //   iconTheme: IconThemeData(color: Colors.black),
          // ),
          drawer: NavigationDrawer(),
          body: TabBarView(controller: _tabController, children: [
            Attendence(),
            AttendencePercentage(),
          ]),
        ));
  }
}