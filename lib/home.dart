import 'package:facebook_ui/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  SharedPreferences? sharedPreferences;

  increment() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      count++;
      sharedPreferences!.setInt("data", count);
      sharedPreferences!.setString("data2", "Kamrul jaman");
      print("the value is ${sharedPreferences!.getInt("data")}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: Text(
                  "Go Page 2",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
