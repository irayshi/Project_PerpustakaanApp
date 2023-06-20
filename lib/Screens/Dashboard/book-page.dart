import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/single-book-page.dart';
import 'package:flutter_auth/constants.dart';
import '../../components/background.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key, required this.buku}) : super(key: key);
  final String buku;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String searchValue = '';
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
                  widget.buku.toString(),
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
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SingleBookPage(
                            buku: name_category[index],
                          );
                        },
                      ),
                    );
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Card(
                    child: Container(
                      height: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    books[index],
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
                              Row(
                                children: [
                                  Text(
                                    'Subtitle',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
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
