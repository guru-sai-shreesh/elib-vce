import 'package:e_vce/grades/exam_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation_drawer.dart';

class Grades extends StatefulWidget {
  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  final List<String> semList = <String>[
    'Sem 1',
    'Sem 2',
    'Sem 3',
    'Sem 4',
    'Sem 5',
    'Sem 6',
    'Sem 7',
    'Sem 8',
  ];

  @override
  Widget build(BuildContext context) {
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
            body: ListView.builder(
                itemCount: semList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => ExamList())),
                      );
                    },
                    child: Card(
                        color: Color.fromARGB(255, 17, 149, 189),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  semList[index],
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ]),
                        )),
                  );
                })));
  }
}
