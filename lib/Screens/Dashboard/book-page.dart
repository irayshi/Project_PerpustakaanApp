import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../components/background.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

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
            Text(
              "Buku Teknik Informatika",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.search),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchValue = value;
                });
              },
            ),
            StaggeredGrid.count(crossAxisCount: 2, children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 10.0,
                ),
                child: SizedBox(
                  width: 120.0,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    elevation: 4.0,
                    child: InkWell(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image.asset(
                          'assets/images/book1.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
