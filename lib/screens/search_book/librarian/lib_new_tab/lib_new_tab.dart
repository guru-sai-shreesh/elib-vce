import 'package:e_vce/model/book_model.dart';
import 'package:e_vce/model/personal_data.dart';
import 'package:e_vce/model/fetchtop10.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../lib_display_book.dart';

class LibNewTab extends StatefulWidget {
  const LibNewTab({Key? key}) : super(key: key);

  @override
  State<LibNewTab> createState() => _LibNewTabState();
}

class _LibNewTabState extends State<LibNewTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: inNewTab.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 90,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 85,
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => LibDisplayBook(
                                      popularBookModel: inNewTab[index] ??
                                          Book(
                                              author_name: "author_name",
                                              book_name: "book_name",
                                              isbn: "isbn"),
                                    )),
                              ));
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    inNewTab[index]!.book_name,
                                    style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    inNewTab[index]!.author_name,
                                    style: GoogleFonts.openSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (liked_books!.contains(inNewTab[index])) {
                                  liked_books!.remove(inNewTab[index]);
                                } else {
                                  liked_books!.add(inNewTab[index] ??
                                      Book(
                                          author_name: "author_name",
                                          book_name: "book_name",
                                          isbn: "isbn"));
                                }
                              });
                            },
                            child: Icon(
                              liked_books!.contains(inNewTab[index])
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: liked_books!.contains(inNewTab[index])
                                  ? Colors.red
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => LibDisplayBook(
                                  popularBookModel: inNewTab[index] ??
                                      Book(
                                          author_name: "author_name",
                                          book_name: "book_name",
                                          isbn: "isbn"),
                                ))),
                      );
                    }),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      elevation: 4.99,
                      child: Container(
                        height: 115,
                        width: 76,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  inNewTab[index]!.image_address ?? ""),
                              fit: BoxFit.fill,
                            )),
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
