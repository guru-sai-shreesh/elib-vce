import 'package:e_vce/model/project_model.dart';
import 'package:e_vce/screens/projects/projects.dart';
import 'package:e_vce/widget/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayProject extends StatefulWidget {
  final Project popularProjectModel;
  const DisplayProject({Key? key, required this.popularProjectModel})
      : super(key: key);
  @override
  State<DisplayProject> createState() =>
      _DisplayProjectState(popularProjectModel);
}

class _DisplayProjectState extends State<DisplayProject>
    with TickerProviderStateMixin {
  bool likeClicked = false;
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Description"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Documentation"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Reviews"),
      ),
    ),
    Tab(
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text("Categeories"),
      ),
    ),
  ];

  final Project popularProjectModel;
  bool saveClicked = false;

  _DisplayProjectState(this.popularProjectModel);

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, bottom: 25),
            height: 49,
            color: Colors.transparent,
            child: FlatButton(
              color: Color.fromARGB(255, 17, 149, 189),
              onPressed: (() {
                onTap:
                setState(() {
                  if (saveClicked) {
                    saveClicked = false;
                  } else {
                    saveClicked = true;
                  }
                });
              }),
              minWidth: 20,
              child: Icon(
                saveClicked
                    ? Icons.bookmark_rounded
                    : Icons.bookmark_outline_rounded,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 25, bottom: 25),
            height: 49,
            color: Colors.transparent,
            child: FlatButton(
              color: Color.fromARGB(255, 17, 149, 189),
              onPressed: (() {
                onTap:
                setState(() {});
              }),
              minWidth: MediaQuery.of(context).size.width - 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Open Subscription",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(121, 45, 109, 228),
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  children: [
                    Align(
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.2,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/project_cover.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                popularProjectModel.project_name,
                                style: GoogleFonts.openSans(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                popularProjectModel.student_name,
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width - 170,
                            alignment: Alignment.bottomRight,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromARGB(255, 17, 149, 189),
                              onPressed: (() {
                                onTap:
                                setState(() {
                                  if (likeClicked) {
                                    likeClicked = false;
                                  } else {
                                    likeClicked = true;
                                  }
                                });
                              }),
                              minWidth: 20,
                              child: Icon(
                                likeClicked
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_outline_rounded,
                                color: likeClicked ? Colors.red : Colors.white,
                              ),
                            ))
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      height: 25,
                      margin: EdgeInsets.only(top: 5),
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
                      height: 700,
                      child: TabBarView(controller: _tabController, children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25, right: 25),
                          child: Text(popularProjectModel.description ??
                              "No Description"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text('Relevenace and Credentials'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text('Popular Publications'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text('Popular Publications'),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ]))
          ],
        ),
      )),
    );
  }
}
