import 'package:e_vce/screens/e_subscriptions/campus_tab.dart';
import 'package:e_vce/screens/e_subscriptions/off_campus_tab.dart';
import 'package:e_vce/widget/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation_drawer.dart';

class ESubscriptions extends StatefulWidget {
  @override
  State<ESubscriptions> createState() => _ESubscriptionsState();
}

class _ESubscriptionsState extends State<ESubscriptions>
    with TickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Campus"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Off-Campus Subscriptions"),
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
              defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            isScrollable: true,
            unselectedLabelColor: Colors.white70,
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
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(121, 45, 109, 228),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(left: 25, right: 25, top: 10),
          child: TabBarView(controller: _tabController, children: [
            CampusTab(),
            OffCampusTab(),
          ]),
        ),
      ),
    );
  }
}
