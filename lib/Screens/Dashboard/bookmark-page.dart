import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/single-book-page.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/background.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  String searchValue = '';
  bool isIconHovered = false;
  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              elevation: 4,
              color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Bookmarks',
                  // widget.buku.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryLightColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              style: TextStyle(color: kPrimaryLightColor),
              cursorColor: kPrimaryLightColor,
              decoration: InputDecoration(
                fillColor: kPrimaryColor,
                hintText: "Search books...",
                hintStyle: TextStyle(color: kPrimaryLightColor),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.search, color: kPrimaryLightColor),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchValue = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: books.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SingleBookPage(
                            buku: books[index],
                          );
                        },
                      ),
                    );
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Card(
                    // color: kPrimaryColor,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(010.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        books[index],
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                              color: kPrimaryColor),
                                          child: InkWell(
                                            onHover: (value) {
                                              setState(() {
                                                isIconHovered = value;
                                              });
                                            },
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons
                                                      .bookmark_remove_outlined,
                                                  color: Colors.white,
                                                  size: 20,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Title',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 5,
                mainAxisExtent: 230,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
