import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/book-page.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0X803B98),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              spreadRadius: 3)
                        ],
                        border: Border.all(
                          width: 1.5,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/foto-profile.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Material(
                            type: MaterialType.transparency,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hai!',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    "assets/icons/edit.svg",
                                    width: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Material(
                            type: MaterialType.transparency,
                            child: Text(
                              'Salsa Tulkaromah',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Category',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BookPage(
                              buku: name_category[index],
                            );
                          },
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 80.0,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        elevation: 4,
                        color: kPrimaryColor,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Card(
                              color: Colors.white,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                child: Image.asset(
                                  category[index],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Material(
                                    type: MaterialType.transparency,
                                    child: Text(
                                      name_category[index],
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryLightColor,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
