import 'package:e_vce/items_list.dart';
import 'package:e_vce/search_book/new_tab.dart';
import 'package:e_vce/search_book/trending_tab.dart';
import 'package:e_vce/widget/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';

import '../display_book.dart';
import '../homescreen.dart';
import '../items_list.dart';
import '../navigation_drawer.dart';

class SearchBook extends StatefulWidget {
  @override
  State<SearchBook> createState() => _SearchBookState();
}

class _SearchBookState extends State<SearchBook> with TickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("New"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Trending"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Recomendation"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

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
            ),
            // appBar: AppBar(
            //   title: Text("E-VCE"),
            //   backgroundColor: Colors.transparent,
            //   elevation: 0.0,
            //   iconTheme: IconThemeData(color: Colors.black),
            // ),
            drawer: NavigationDrawer(),
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 25, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hi, Shreesh',
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(158, 158, 158, 1),
                            )),
                        Text('Discover Book',
                            style: GoogleFonts.openSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ))
                      ],
                    )),
                Container(
                  height: 39,
                  margin: EdgeInsets.only(left: 18, right: 25, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Stack(
                    children: <Widget>[
                      TextField(
                        maxLengthEnforced: true,
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 19, right: 50, bottom: 10),
                            border: InputBorder.none,
                            hintText: 'Search book..',
                            hintStyle: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Positioned(
                        top: 8,
                        right: 9,
                        child: PositionedTapDetector(
                          onTap: (position) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: ((context) => ItemList())),
                            );
                          },
                          child: Icon(Icons.search_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => DisplayBook())),
                    );
                  }),
                  child: Container(
                      margin: EdgeInsets.only(top: 21),
                      height: 210,
                      child: ListView.builder(
                          itemCount: 5,
                          padding: EdgeInsets.only(left: 18, right: 5),
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 210,
                              width: 133,
                              margin: EdgeInsets.only(right: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/book_cover.jpg')),
                              ),
                            );
                          })),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 24),
                  child: Text("Monthly TOP 10",
                      style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
                Container(
                  height: 25,
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 25),
                  child: DefaultTabController(
                    length: myTabs.length,
                    child: TabBar(
                      controller: _tabController,
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 10, color: Colors.black),
                      unselectedLabelStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: myTabs,
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height - 560,
                  child: TabBarView(controller: _tabController, children: [
                    NewTab(),
                    TrendingTab(),
                    Center(
                      child: Text('No Recomendations'),
                    ),
                  ]),
                )
              ],
            )));
  }
}
