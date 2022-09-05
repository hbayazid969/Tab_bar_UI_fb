import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("David jump"),
            subtitle: Text("Actor"),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text("Page"),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("Groups"),
          ),
        ],
      ),
    );
  }
}
