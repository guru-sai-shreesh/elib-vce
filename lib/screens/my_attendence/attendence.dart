import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  final List<bool> isPresent = <bool>[
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    true,
    true,
    true,
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    true,
    true,
    true,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: isPresent.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, top: 10),
            color: isPresent[index]
                ? Color.fromARGB(255, 150, 198, 213)
                : Color.fromARGB(255, 17, 149, 189),
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subject Name",
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 3)),
                        Text(
                          "Start-End Time",
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        )
                      ]),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Date",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
