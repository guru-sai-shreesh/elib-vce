import 'dart:convert';

import 'package:e_vce/model/book_model.dart';
import 'package:e_vce/model/colors.dart';
import 'package:e_vce/model/personal_data.dart';
import 'package:e_vce/model/project_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PhysicalBookDisplay extends StatefulWidget {
  final Book popularBookModel;
  const PhysicalBookDisplay({Key? key, required this.popularBookModel})
      : super(key: key);

  @override
  State<PhysicalBookDisplay> createState() =>
      _PhysicalBookDisplayState(popularBookModel);
}

class _PhysicalBookDisplayState extends State<PhysicalBookDisplay> {
  bool isLoading = false;

  final Book popularBookModel;

  _PhysicalBookDisplayState(this.popularBookModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackgroundColor,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "E-VCE",
              style: TextStyle(color: Colors.white70),
            ),
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Book Image:"),
                        SizedBox(
                          width: 20,
                        ),
                        Image.network(
                          popularBookModel.image_address ?? "",
                          height: 115,
                          width: 76,
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Book Name:"),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 220,
                            child: Text(popularBookModel.book_name)),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ISBN:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(popularBookModel.isbn),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Author Name:"),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 220,
                            child: Text(popularBookModel.book_name)),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Relavence:"),
                        SizedBox(
                          width: 20,
                        ),
                        for (var item in popularBookModel.relavence ?? ["None"])
                          Text(item + " "),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Publisher Name:"),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 220,
                            child: Text(popularBookModel.publisher ??
                                "publisher name")),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quantity:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(popularBookModel.quantity.toString()),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location:"),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Floor: "),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Rack No: "),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Floor: "),
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Edition:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(popularBookModel.edition ?? "--"),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Number of pages:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(popularBookModel.no_of_pages.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
