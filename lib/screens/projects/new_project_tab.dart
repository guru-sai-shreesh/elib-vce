import 'package:e_vce/model/project_model.dart';
import 'package:e_vce/screens/display_project.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProjectTab extends StatefulWidget {
  const NewProjectTab({Key? key}) : super(key: key);

  @override
  State<NewProjectTab> createState() => _NewProjectTabState();
}

class _NewProjectTabState extends State<NewProjectTab> {
  @override
  List<bool> newProjectAlreadyClicked = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 25, left: 25, right: 25),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 19),
            height: 81,
            width: MediaQuery.of(context).size.width - 50,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: ((context) => DisplayProject(
                                popularProjectModel: new Project(
                                    student_name: "Guru sai shreesh",
                                    project_name: "Ingress"),
                              ))),
                    );
                  }),
                  child: Container(
                    height: 81,
                    width: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/project_cover.jpg'))),
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: ((context) => DisplayProject(
                                popularProjectModel: new Project(
                                    student_name: "Guru sai shreesh",
                                    project_name: "Ingress"),
                              ))),
                    );
                  }),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "VCE Project",
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "guru sai shreesh",
                        style: GoogleFonts.openSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 230,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (newProjectAlreadyClicked[index]) {
                            newProjectAlreadyClicked[index] = false;
                          } else {
                            newProjectAlreadyClicked[index] = true;
                          }
                        });
                      },
                      child: Icon(
                        newProjectAlreadyClicked[index]
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color:
                            newProjectAlreadyClicked[index] ? Colors.red : null,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
