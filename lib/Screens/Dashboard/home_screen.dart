import 'package:flutter/material.dart';
import 'profile-page.dart';
import 'home-page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  late List<Widget> _children;

  void initState() {
    super.initState();
    updateView(0);
  }

  void updateView(int index) {
    setState(() {
      currentIndex = index;
      _children = [HomePage(), ProfilePage()];
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  updateView(0);
                },
                icon: Icon(Icons.menu_book_rounded)),
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  updateView(1);
                },
                icon: Icon(Icons.bookmark)),
          ],
        ),
      ),
    );
  }
}
