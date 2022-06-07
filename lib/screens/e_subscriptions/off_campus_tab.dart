import 'package:e_vce/model/subscription_model.dart';
import 'package:e_vce/model/subscritions_list.dart';
import 'package:e_vce/screens/e_subscriptions/display_subscription.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffCampusTab extends StatefulWidget {
  const OffCampusTab({Key? key}) : super(key: key);

  @override
  State<OffCampusTab> createState() => _OffCampusTabState();
}

class _OffCampusTabState extends State<OffCampusTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 25, left: 25, right: 25),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: offCampusSubsList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 17, 149, 189),
            elevation: 10,
            margin: EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              height: (MediaQuery.of(context).size.width - 100) * 0.5,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => DisplaySubscription(
                                popularSubscriptionModel:
                                    offCampusSubsList[index]))),
                      );
                    }),
                    child: Container(
                      height: (MediaQuery.of(context).size.width - 100) * 0.4,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(offCampusSubsList[index]
                                      .image_address ??
                                  "https://www.acm.org/binaries/content/gallery/acm/ctas/publications/digital-library-logo.jpg"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Text(
                      offCampusSubsList[index].subscription_name,
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => DisplaySubscription(
                                  popularSubscriptionModel:
                                      offCampusSubsList[index],
                                ))),
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