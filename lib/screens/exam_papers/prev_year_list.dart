import 'package:e_vce/model/colors.dart';
import 'package:e_vce/screens/exam_papers/ecam_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrevYearList extends StatefulWidget {
  @override
  State<PrevYearList> createState() => _PrevYearListState();
}

class _PrevYearListState extends State<PrevYearList> {
  final List<String> prevSemList = <String>[
    '2018',
    '2019',
    '2020',
    '2021',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackgroundColor,
      child: Scaffold(
          appBar: AppBar(
            title: Text("E-VCE"),
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: ListView.builder(
              itemCount: prevSemList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => ExamType())),
                    );
                  },
                  child: Card(
                      color: Colors.white70,
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
                                prevSemList[index],
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ]),
                      )),
                );
              })),
    );
  }
}
