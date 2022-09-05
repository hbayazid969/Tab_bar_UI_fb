import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("What's on your mind?"),
              )),
          Container(
            height: 20,
            width: 400,
            color: Colors.white54,
            child: TextField(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.add_a_photo),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.video_call),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2016/05/15/01/05/icon-1392947_1280.png",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(flex: 2, child: Icon(Icons.favorite)),
                  Expanded(flex: 2, child: Icon(Icons.comment)),
                  Expanded(flex: 2, child: Icon(Icons.share)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
