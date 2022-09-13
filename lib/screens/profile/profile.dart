import 'package:e_vce/model/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:rounded_modal/rounded_modal.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  TextEditingController gender = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Profile"),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 0, right: 15, left: 15, bottom: 70),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // child: GradientText(
                          //   "Register Account",
                          //   colors: [
                          //     Color(0xFF0D47A1),
                          //     Color(0xFF1976D2),
                          //     // Color(0xFF42A5F5),
                          //   ],
                          //   style:
                          //       TextStyle(fontSize: 29, fontWeight: FontWeight.w700),
                          // ),
                          SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 75,
                                  backgroundColor: Colors.black54,
                                  child: CircleAvatar(
                                    radius: 71,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 69,
                                      backgroundImage: NetworkImage(
                                          'https://yt3.ggpht.com/ytc/AKedOLRTjSE3cSLWjjTu06H1vmZ3bpTG8SrNONwsfrVh8Q=s900-c-k-c0x00ffffff-no-rj'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 5, bottom: 5),
                              child: Text(
                                "PERSONAL DETAILS -",
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "ROLL NUMBER",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Roll Number',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "STUDENT NAME",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Student name',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "FATHER NAME",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Father name',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "DATE OF BIRTH",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  controller: dateInput,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Choose a date',
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "GENDER",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  controller: gender,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  readOnly: true,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  onTap: () {
                                    showRoundedModalBottomSheet(
                                        context: context,
                                        radius: 20,
                                        builder: (context) {
                                          List<String> options = [
                                            "Male",
                                            "Female"
                                          ];
                                          var selectedIndex;
                                          return Container(
                                            height: 300,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(150.0,
                                                          10.0, 150.0, 20.0),
                                                      child: Container(
                                                        height: 8.0,
                                                        width: 80.0,
                                                        decoration: BoxDecoration(
                                                            color: Colors
                                                                .grey[300],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8))),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "Assigned Gender",
                                                        style: GoogleFonts
                                                            .openSans(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(),
                                                  ],
                                                ),
                                                StatefulBuilder(builder:
                                                    (BuildContext context,
                                                        StateSetter mystate) {
                                                  return Container(
                                                    padding: EdgeInsets.only(
                                                        top: 75, bottom: 50),
                                                    child: ListView.builder(
                                                      itemCount: options.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Column(
                                                          children: [
                                                            ListTile(
                                                              title: Text(
                                                                  options[
                                                                      index]),
                                                              leading: (selectedIndex ==
                                                                      index)
                                                                  ? Icon(
                                                                      Icons
                                                                          .check_circle,
                                                                      color: Color(
                                                                          0xFF0D47A1),
                                                                    )
                                                                  : Icon(Icons
                                                                      .circle_outlined),
                                                              onTap: () {
                                                                selectedIndex =
                                                                    index;
                                                                mystate(() {
                                                                  selectedIndex =
                                                                      index;
                                                                });
                                                              },
                                                            ),
                                                            Divider()
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                }),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: FlatButton(
                                                      onPressed: () {
                                                        gender.text = options[
                                                            selectedIndex];
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 45,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF0D47A1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: Center(
                                                          child: Text(
                                                            "Save",
                                                            style: GoogleFonts
                                                                .openSans(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Select Gender',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "GitHub URL",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  controller: gender,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  readOnly: true,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  onTap: () {
                                    showRoundedModalBottomSheet(
                                        context: context,
                                        radius: 20,
                                        builder: (context) {
                                          var selectedIndex;
                                          return Container(
                                            height: 250,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(150.0,
                                                          10.0, 150.0, 20.0),
                                                      child: Container(
                                                        height: 8.0,
                                                        width: 80.0,
                                                        decoration: BoxDecoration(
                                                            color: Colors
                                                                .grey[300],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8))),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "GitHub URL",
                                                        style: GoogleFonts
                                                            .openSans(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(),
                                                  ],
                                                ),
                                                Center(
                                                  child: SizedBox(
                                                    height: 47,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                    child: TextField(
                                                      cursorHeight: 18,
                                                      cursorColor: AppColors
                                                          .primaryColor,
                                                      style:
                                                          GoogleFonts.openSans(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: Colors.white,
                                                        filled: true,
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFF1976D2),
                                                            width: 2,
                                                          ),
                                                        ),
                                                        hintStyle: GoogleFonts
                                                            .openSans(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.grey,
                                                        ),
                                                        hintText:
                                                            'Enter GitHub URL',
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.grey,
                                                            width: 1,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: FlatButton(
                                                      onPressed: () {
                                                        gender.text =
                                                            "hello.com";
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 45,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF0D47A1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: Center(
                                                          child: Text(
                                                            "Save",
                                                            style: GoogleFonts
                                                                .openSans(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter GitHub URL',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "LinkedIn URL",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  controller: gender,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  readOnly: true,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  onTap: () {
                                    showRoundedModalBottomSheet(
                                        context: context,
                                        radius: 20,
                                        builder: (context) {
                                          var selectedIndex;
                                          return Container(
                                            height: 250,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(150.0,
                                                          10.0, 150.0, 20.0),
                                                      child: Container(
                                                        height: 8.0,
                                                        width: 80.0,
                                                        decoration: BoxDecoration(
                                                            color: Colors
                                                                .grey[300],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8))),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "LinkedIn URL",
                                                        style: GoogleFonts
                                                            .openSans(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(),
                                                  ],
                                                ),
                                                Center(
                                                  child: SizedBox(
                                                    height: 47,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                    child: TextField(
                                                      cursorHeight: 18,
                                                      cursorColor: AppColors
                                                          .primaryColor,
                                                      style:
                                                          GoogleFonts.openSans(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: Colors.white,
                                                        filled: true,
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFF1976D2),
                                                            width: 2,
                                                          ),
                                                        ),
                                                        hintStyle: GoogleFonts
                                                            .openSans(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.grey,
                                                        ),
                                                        hintText:
                                                            'Enter LinkedIn URL',
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.grey,
                                                            width: 1,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: FlatButton(
                                                      onPressed: () {
                                                        gender.text =
                                                            "hello.com";
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 45,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF0D47A1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: Center(
                                                          child: Text(
                                                            "Save",
                                                            style: GoogleFonts
                                                                .openSans(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.black,
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter LinkedIn URL',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 5, bottom: 5),
                              child: Text(
                                "ACADEMIC DETAILS -",
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "BATCH",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Batch',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "SECTION",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Section',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "CURRENT SEMESTER",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Current Semester',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 5, bottom: 5),
                              child: Text(
                                "ADMISSION DETAILS -",
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "JOINING DATE",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Joining date',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "JOINING CATEGEORY",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Joining Categeory',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "EAMCET RANK",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Eamcet Rank',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "JEE MAINS RANK",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter JEE mains Rank',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "INTERMEDIATE PERCENTAGE",
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 47,
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextField(
                                  readOnly: true,
                                  cursorHeight: 18,
                                  cursorColor: AppColors.primaryColor,
                                  style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF1976D2),
                                        width: 2,
                                      ),
                                    ),
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Enter Intermediate Percentage',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child:
                // ),
              ],
            )));
  }
}
