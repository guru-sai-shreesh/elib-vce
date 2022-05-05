import 'package:e_vce/display_subscription.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampusTab extends StatefulWidget {
  const CampusTab({Key? key}) : super(key: key);

  @override
  State<CampusTab> createState() => _CampusTabState();
}

class _CampusTabState extends State<CampusTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 25, left: 25, right: 25),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 17, 149, 189),
            elevation: 10,
            margin: EdgeInsets.only(left: 25, right: 50, bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 19),
              height: 150,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => DisplaySubscription())),
                      );
                    }),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/images/subs.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      "VCE SUBSCRIPTION",
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => DisplaySubscription())),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
