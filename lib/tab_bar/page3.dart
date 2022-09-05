import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.public),
            title: Text("David Jump comment on your photo"),
            trailing: Icon(Icons.menu_open_sharp),
          ),
          ListTile(
            leading: Icon(Icons.public),
            title: Text("David Jump loves your photo"),
            trailing: Icon(Icons.menu_open_sharp),
          ),
        ],
      ),
    );
  }
}
