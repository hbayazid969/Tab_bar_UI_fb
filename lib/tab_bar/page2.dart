import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mark Don"),
            subtitle: Text("Developer"),
            trailing: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text("Add Friends"))),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("David jump"),
            subtitle: Text("Actor"),
            trailing: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text("Add Friends"))),
          ),
        ],
      ),
    );
  }
}
