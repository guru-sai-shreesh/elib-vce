import 'package:e_vce/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'display_book.dart';

class TrendingTab extends StatefulWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  State<TrendingTab> createState() => _TrendingTabState();
}

class _TrendingTabState extends State<TrendingTab> {
  List<bool> trendingAlreadyClicked = <bool>[
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
                          builder: ((context) => DisplayBook(
                                popularBookModel: new Book(
                                    isbn: "1234",
                                    author_name: "Guru sai shreesh Tirumalla",
                                    book_name: "My Book",
                                    description:
                                        "A good book description is detailed, descriptive copy that is good for public display, used for your book marketing, book discovery, and for sales purposes. It helps potential buyers find and understand your book. It's your pitch. Your chance to get people interested"),
                              ))),
                    );
                  }),
                  child: Container(
                    height: 81,
                    width: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/book_cover.jpg'))),
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: ((context) => DisplayBook(
                                popularBookModel: new Book(
                                    isbn: "1234",
                                    author_name: "Guru sai shreesh Tirumalla",
                                    book_name: "My Book",
                                    description:
                                        "A good book description is detailed, descriptive copy that is good for public display, used for your book marketing, book discovery, and for sales purposes. It helps potential buyers find and understand your book. It's your pitch. Your chance to get people interested"),
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
                        "VCE BOOK",
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
                  width: MediaQuery.of(context).size.width - 220,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (trendingAlreadyClicked[index]) {
                            trendingAlreadyClicked[index] = false;
                          } else {
                            trendingAlreadyClicked[index] = true;
                          }
                        });
                      },
                      child: Icon(
                        trendingAlreadyClicked[index]
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color:
                            trendingAlreadyClicked[index] ? Colors.red : null,
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
