// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            Center(
              child: Text("1st Screen"),
            ),
            Center(
              child: Text("2nd Screen"),
            ),
            Center(
              child: Text("3rd Screen"),
            ),
            Center(
              child: Text("4th Screen"),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(labelColor: Colors.red, tabs: [
          Tab(
            child: Icon(Icons.more_vert_sharp),
          ),
          Tab(
            child: Icon(Icons.local_play_sharp),
          ),
          Tab(
            child: Icon(Icons.directions_car),
          ),
          Tab(
            child: Icon(Icons.home),
          ),
        ]),
      ),
    );
  }
}
