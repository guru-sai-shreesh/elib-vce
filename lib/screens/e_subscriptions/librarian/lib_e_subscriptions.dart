import 'package:e_vce/screens/e_subscriptions/campus_tab.dart';
import 'package:e_vce/screens/e_subscriptions/librarian/lib_add_subscription.dart';
import 'package:e_vce/screens/e_subscriptions/off_campus_tab.dart';
import 'package:e_vce/screens/navigation_drawer.dart';
import 'package:e_vce/widget/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

class LibESubscriptions extends StatefulWidget {
  @override
  State<LibESubscriptions> createState() => _LibESubscriptionsState();
}

class _LibESubscriptionsState extends State<LibESubscriptions>
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
      child: Container(
        color: Color.fromRGBO(43, 94, 148, 1),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "E-VCE",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
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
          backgroundColor: Colors.transparent,
          drawer: NavigationDrawer(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (((context) => AddSubscription()))));
            },
            backgroundColor: Color.fromARGB(255, 68, 117, 169),
            elevation: 5,
            label: Text('Subscription',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            child: TabBarView(controller: _tabController, children: [
              CampusTab(),
              OffCampusTab(),
            ]),
          ),
        ),
      ),
    );
  }
}
