import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/book-page.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchValue = '';
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Color(0XFF00B686),
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
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hai!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Salsa Tulkaromah',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            // overflow: TextOverflow.fade,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Category',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(3, 4))
                  ],
                ),
                child: Material(
                  child: InkWell(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BookPage();
                            },
                          ),
                        );
                      },
                      leading: Image.asset(
                        'assets/images/card1.png',
                        fit: BoxFit.cover,
                        width: 90,
                        height: 100,
                      ),
                      title: Text(
                        'Teknik Informatika',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
