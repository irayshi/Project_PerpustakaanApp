import 'package:flutter_auth/Screens/Dashboard/bookmark-page.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter/material.dart';
import 'home-page.dart';

class Layout extends StatefulWidget {
  Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;
  late List<Widget> _children = [HomePage(), BookmarkPage()];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        selectedItemColor: kPrimaryLightColor,
        unselectedItemColor: kPrimaryLightColor,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/home.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/bookmark.png')),
            label: 'Bookmarks',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
