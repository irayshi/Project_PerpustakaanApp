import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
    this.logo = "assets/images/logo_1.png",
  }) : super(key: key);

  final String topImage, bottomImage, logo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Image.asset(bottomImage, width: 120),
            // ),
            Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  Image.asset(
                    logo,
                    width: 60,
                  ),
                  Text(
                    'Reading Zone',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: Navigator.of(context).canPop(),
              child: Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    // icon: (buat kondisi kalau udah login ubah icon jadi logout) ? Icon(Icons.arrow_back) : Icon(Icons.logout)),
                    icon: Icon(Icons.arrow_back)),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 80),
                child: SafeArea(child: child)),
          ],
        ),
      ),
    );
  }
}
