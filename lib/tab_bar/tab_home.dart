import 'package:facebook_ui/tab_bar/page1.dart';
import 'package:facebook_ui/tab_bar/page2.dart';
import 'package:facebook_ui/tab_bar/page3.dart';
import 'package:facebook_ui/tab_bar/page4.dart';
import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TabBar(
                physics: BouncingScrollPhysics(),
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                controller: tabController,
                onTap: (index) {
                  setState(() {
                    tabController!.index = index;
                  });
                },
                tabs: [
                  Tab(
                    child: Icon(Icons.home, color: Colors.black),
                  ),
                  Tab(
                    child: Icon(Icons.person_add, color: Colors.black),
                  ),
                  Tab(
                    child: Icon(Icons.notifications, color: Colors.black),
                  ),
                  Tab(
                    child: Icon(Icons.menu, color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: [Page1(), Page2(), Page3(), Page4()],
            ))
          ],
        ),
      ),
    );
  }
}
