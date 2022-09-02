// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_const_constructors, unused_element, file_names

import 'package:flutter/material.dart';
import 'package:task/utilities/constants.dart';

import '../utilities/colors.dart';

Widget horizontalListView(height, width, color, margin) {
  return Column(
    children: [
      SizedBox(
        height: 57,
        child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: height,
                  width: width,
                  margin: EdgeInsets.all(margin),
                  // color: color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(6),
                        child: Text(
                          listItems[index].name,
                          style: TextStyle(
                              color: ColorConstants.lightGreen,
                              fontSize: 16,
                              fontFamily: 'sst arabic'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6),
                        child: Image.asset(
                          listItems[index].path,
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ));
            }),
      ),
    ],
  );
}
