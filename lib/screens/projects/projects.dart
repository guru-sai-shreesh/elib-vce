import 'dart:convert';

import 'package:e_vce/model/fetchtop10.dart';
import 'package:e_vce/model/project_model.dart';
import 'package:e_vce/screens/projects/display_project.dart';
import 'package:e_vce/screens/items_list.dart';
import 'package:e_vce/screens/navigation_drawer.dart';
import 'package:e_vce/screens/projects/add_project.dart';
import 'package:e_vce/screens/projects/new_project_tab.dart';
import 'package:e_vce/screens/projects/trending_project_tab.dart';
import 'package:e_vce/widget/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';
import 'package:substring_highlight/substring_highlight.dart';

class Projects extends StatefulWidget {
  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with TickerProviderStateMixin {
  bool isLoading = false;

  late List<String> autoCompleteData;

  late TextEditingController search_controller;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String stringData = await rootBundle.loadString("assets/data.json");

    final List<dynamic> json = jsonDecode(stringData);

    final List<String> jsonStringData = json.cast<String>();
    print(jsonStringData);
    setState(() {
      isLoading = false;
      autoCompleteData = jsonStringData;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAutoCompleteData();
  }

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
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: myTabs.length, vsync: this);
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).popUntil(ModalRoute.withName("/"));
          return false;
        },
        child: Container(
          color: Color.fromARGB(255, 152, 209, 255),
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "E-VCE",
                  style: TextStyle(color: Colors.black87),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              backgroundColor: Colors.transparent,
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (((context) => AddProject()))));
                },
                backgroundColor: Color.fromARGB(255, 17, 149, 189),
                elevation: 5,
                label: Text('Add Project',
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
              drawer: NavigationDrawer(),
              body: FutureBuilder(
                future: fetchTop10(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView(
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
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    )),
                                Text('Discover Projects',
                                    style: GoogleFonts.openSans(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 32, 32, 32),
                                    ))
                              ],
                            )),
                        Autocomplete(
                          optionsBuilder: (TextEditingValue textEditingValue) {
                            if (textEditingValue.text.isEmpty) {
                              return const Iterable<String>.empty();
                            } else {
                              return autoCompleteData.where((word) => word
                                  .toLowerCase()
                                  .contains(
                                      textEditingValue.text.toLowerCase()));
                            }
                          },
                          optionsViewBuilder:
                              (context, Function(String) onSelected, options) {
                            return Card(
                              margin: EdgeInsets.only(
                                  right: 30, top: 5, bottom: 400),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                padding: EdgeInsets.only(),
                                itemBuilder: (context, index) {
                                  final option = options.elementAt(index);

                                  return ListTile(
                                    // title: Text(option.toString()),
                                    title: SubstringHighlight(
                                      text: option.toString(),
                                      term: search_controller.text,
                                      textStyleHighlight: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    onTap: () {
                                      onSelected(option.toString());
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) => Divider(),
                                itemCount: options.length,
                              ),
                            );
                          },
                          onSelected: (selectedString) {
                            print(selectedString);
                          },
                          fieldViewBuilder: (context, controller, focusNode,
                              onEditingComplete) {
                            search_controller = controller;

                            return Container(
                              height: 39,
                              margin:
                                  EdgeInsets.only(left: 18, right: 25, top: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white54,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  TextField(
                                    controller: search_controller,
                                    style: GoogleFonts.openSans(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: 19, right: 50, bottom: 10),
                                        border: InputBorder.none,
                                        hintText: 'Search project..',
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
                                              builder: ((context) => ItemList(
                                                    keyword:
                                                        search_controller.text,
                                                    search_type: "tag",
                                                  ))),
                                        );
                                      },
                                      child: Icon(Icons.search_outlined),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.only(right: 10, left: 10),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            height: 200,
                            child: ListView.builder(
                                itemCount: ProjectscrollDisplay.length,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: (() {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                DisplayProject(
                                                  popularProjectModel:
                                                      ProjectscrollDisplay[
                                                              index] ??
                                                          Project(
                                                              student_name:
                                                                  "student_name",
                                                              project_name:
                                                                  "project_name"),
                                                ))),
                                      );
                                    }),
                                    child: Container(
                                        height: 180,
                                        width: 115,
                                        margin: EdgeInsets.only(left: 14),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  ProjectscrollDisplay[index]!
                                                          .image_address ??
                                                      ""),
                                              fit: BoxFit.fill,
                                            ))),
                                  );
                                })),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 24),
                          child: Text("Monthly Top 10",
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
                              unselectedLabelColor: Colors.white70,
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
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: double.maxFinite,
                          height: inProjectNewTab.length * 125,
                          child:
                              TabBarView(controller: _tabController, children: [
                            NewProjectTab(),
                            TrendingProjectTab(),
                          ]),
                        )
                      ],
                    );
                  }
                  //  else if (snapshot.connectionState ==
                  //     ConnectionState.waiting) {
                  //   return Center(child: Text("wait"));
                  // }
                  else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )),
        ));
  }
}
