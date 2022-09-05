import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int? x;
  String? name;
  SharedPreferences? sharedPreferences;
  loadData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      x = sharedPreferences!.getInt("data");
      name = sharedPreferences!.getString("data2");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("hi $x $name"),
    );
  }
}
