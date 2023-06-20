import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/background.dart';

class SingleBookPage extends StatefulWidget {
  const SingleBookPage({Key? key, required this.buku}) : super(key: key);
  final String buku;

  @override
  State<SingleBookPage> createState() => _SingleBookPageState();
}

class _SingleBookPageState extends State<SingleBookPage> {
  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  String title = 'Title Book';
  String deskripsion =
      'Deskripsion lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro laboriosam eligendi reiciendis iusto numquam adipisci delectus voluptate tempora nostrum beatae fugit necessitatibus illo soluta totam facilis dignissimos quos sequi, maxime, nulla voluptatum. Amet error expedita quia fugiat eos libero, a soluta similique consequuntur perferendis sapiente nesciunt nihil repellat sunt? Tenetur laudantium molestiae similique ad recusandae. Ut mollitia dolores, voluptates eos dignissimos optio impedit magni dolore ducimus ipsa nesciunt enim beatae quisquam quas rem commodi esse fuga velit vitae aliquam adipisci placeat sed ipsum iure? Quidem repellendus voluptas ratione pariatur mollitia, atque non repellat ab quis esse optio ipsa, suscipit ipsam?';

  @override
  void initState() {
    super.initState();

    if (deskripsion.length > 200) {
      firstHalf = deskripsion.substring(0, 200);
      secondHalf = deskripsion.substring(200, deskripsion.length);
    } else {
      firstHalf = deskripsion;
      secondHalf = '';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Card(
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
                                      widget.buku,
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20)),
                                            color: kPrimaryColor),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            "assets/icons/bookmark_save.svg",
                                            width: 20,
                                            color: kPrimaryLightColor,
                                          ),
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
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  elevation: 4,
                  color: kPrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/star.svg",
                                  width: 20,
                                  color: kPrimaryLightColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryLightColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Rating',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryLightColor,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '176',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryLightColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Pages',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryLightColor,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Indo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryLightColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryLightColor,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 149, 67, 226)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: kPrimaryLightColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: secondHalf.isEmpty
                            ? Text(
                                (flag ? (firstHalf) : (firstHalf + secondHalf))
                                    .replaceAll(r'\n', '\n')
                                    .replaceAll(r'\r', '')
                                    .replaceAll(r"\'", "'"),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: kPrimaryLightColor,
                                ),
                              )
                            : Column(
                                children: <Widget>[
                                  Text(
                                    (flag
                                            ? (firstHalf + '...')
                                            : (firstHalf + secondHalf))
                                        .replaceAll(r'\n', '\n\n')
                                        .replaceAll(r'\r', '')
                                        .replaceAll(r"\'", "'"),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: kPrimaryLightColor,
                                    ),
                                  ),
                                  InkWell(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          flag ? 'show more' : 'show less',
                                          style: const TextStyle(
                                              color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      setState(() {
                                        flag = !flag;
                                      });
                                    },
                                  ),
                                ],
                              ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 150,
        child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.menu_book_rounded),
            label: Text('Read Now')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
