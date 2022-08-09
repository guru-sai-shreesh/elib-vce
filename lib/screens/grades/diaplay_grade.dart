import 'package:e_vce/model/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradeDisplay extends StatefulWidget {
  final String sem, exam;
  const GradeDisplay({required this.exam, required this.sem, Key? key})
      : super(key: key);

  @override
  State<GradeDisplay> createState() => _GradeDisplayState(exam: exam, sem: sem);
}

class _GradeDisplayState extends State<GradeDisplay> {
  final String sem, exam;
  _GradeDisplayState({required this.exam, required this.sem});
  final children = <Widget>[];

  buildingList(
      List<String> subjectsList, List<String> marks, List<String> maxMarks) {
    children.add(Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Subject Name",
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                )),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 250,
              child: Text("Secured Marks",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ],
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
      ],
    ));
    for (var i = 0; i < subjectsList.length; i++) {
      children.add(Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(subjectsList[i]),
              Spacer(),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 250,
                  child: Text(
                    marks[i] + " / " + maxMarks[i],
                  )),
            ],
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> subjectsList = <String>[
      'DBMS',
      'OS',
      'DAA',
      'ML',
      'SDC-III(A-II)',
      'SDC-IV(TS-I)',
      'ES',
    ];
    final List<String> marks = <String>[
      '80',
      '98',
      '98',
      '89',
      '86',
      '70',
      '80',
    ];
    final List<String> maxMarks = <String>[
      '100',
      '100',
      '100',
      '100',
      '100',
      '100',
      '100',
    ];
    buildingList(subjectsList, marks, maxMarks);
    return Container(
      color: AppColors.primaryBackgroundColor,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Text(
              "E-VCE",
              style: const TextStyle(color: Colors.black),
            ),
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 25, right: 10, bottom: 14),
                  height: 42,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("Percentage- 73.21",
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                      ))),
              Container(
                  margin: EdgeInsets.only(left: 0, right: 25, bottom: 14),
                  height: 42,
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("Total- 173000/230",
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                      ))),
            ],
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: children,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
