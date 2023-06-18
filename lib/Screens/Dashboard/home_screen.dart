import 'package:flutter/material.dart';
import '../Login/login_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Image.asset("assets/images/logo_1.png"),
                Text(
                  'Reading Zone',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),

          // Avatar widget
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // padding: EdgeInsets.only(right: 100),
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 50,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50, right: 170, left: 20),
                child: Text(
                  "Hai!!",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.edit_note_outlined)),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),

          // TextFormField Search
          Container(
            width: 350,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 128, 59, 152),
                  labelText: ('Seach Book'),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              cursorColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),

          SizedBox(
            width: 350,
            child: Material(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: const Color.fromARGB(255, 128, 59, 152),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 128, 59, 152), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 30.0, top: 20.0, bottom: 20.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 128, 59, 152), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: ('Password'),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 128, 59, 152),
                    ),
                  ),
                ),
              ),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
