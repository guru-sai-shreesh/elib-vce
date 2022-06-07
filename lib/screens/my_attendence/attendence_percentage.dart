import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendencePercentage extends StatefulWidget {
  const AttendencePercentage({Key? key}) : super(key: key);

  @override
  State<AttendencePercentage> createState() => _AttendencePercentageState();
}

class _AttendencePercentageState extends State<AttendencePercentage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 25, bottom: 10),
          child: Text("Attendence Summary",
              style: GoogleFonts.openSans(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 32, 32, 32),
              )),
        ),
        Card(
          color: Color.fromARGB(221, 17, 149, 189),
          margin: EdgeInsets.only(left: 25),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 25),
                  child: Text("Total Classes Held: 220",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 25),
                  child: Text("Total classes Present: 200",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 25),
                  child: Text("Regular Attendence Percentage: 94%",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 25, bottom: 10),
          child: Text("CCA Attendence Summary",
              style: GoogleFonts.openSans(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 32, 32, 32),
              )),
        ),
        Card(
          color: Color.fromARGB(221, 17, 149, 189),
          margin: EdgeInsets.only(left: 25),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 25),
                  child: Text("Total Classes Held: 12",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 25),
                  child: Text("Total classes Present: 9",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 25),
                  child: Text("Regular Attendence Percentage: 75%",
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 32, 32, 32),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
