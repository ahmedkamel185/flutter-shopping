// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_const_constructors, unused_element, duplicate_ignore, file_names

import 'package:flutter/material.dart';

Widget buildItems(int index) {
  return new Container(
    // color: Colors.blue,
    padding: EdgeInsets.all(10.0),
    child: Row(
      children: [
        Row(children: [
          RaisedButton(
            // ignore: duplicate_ignore
            // ignore: prefer_const_constructors
            child: new Text("Hii"),
            onPressed: () {},
          ),
        ])
      ],
    ),
  );
}
