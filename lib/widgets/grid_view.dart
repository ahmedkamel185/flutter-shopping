// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/utilities/colors.dart';
import 'package:task/utilities/constants.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //   color: Colors.black,
        child: GridView.count(
          padding: EdgeInsets.only(top: 3, left: 10, right: 10),
          crossAxisCount: COUNT_VALUE,
          childAspectRatio: (ASPECTWIDTH / ASPECTHEIGHT),
          children: gridItems
              .map((data) => GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      //  color: Colors.lightBlueAccent,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 74,
                                  height: 22,
                                  // color: Colors.black,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: ColorConstants.calBackgroundColor,
                                    borderRadius: BorderRadius.circular(3),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 0.5,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(3),
                                          child: Image.asset(
                                            'assets/images/products/exercise.png',
                                            width: 14,
                                            height: 18,
                                            alignment: Alignment.center,
                                          )),
                                      Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text('200 Kcal',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color:
                                                      ColorConstants.lightGreen,
                                                  fontFamily: 'tajawal',
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center)),
                                    ],
                                  )),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 16, top: 0, right: 9),
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/products/Information.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(6),
                            width: 80,
                            height: 116,
                            decoration: BoxDecoration(
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(data.path),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Container(
                              child: Text(data.name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'sst-arabic'),
                                  textAlign: TextAlign.center)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Text('5',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ColorConstants.lightGreen,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'sst-arabic'),
                                      textAlign: TextAlign.center)),
                              Container(
                                  margin: EdgeInsets.only(left: 6),
                                  child: Text(data.quantity,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily: 'sst-arabic'),
                                      textAlign: TextAlign.center))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 0),
                                child: Text(data.price,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorConstants.lightGreen,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'roman'),
                                    textAlign: TextAlign.center),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 16, bottom: 0, right: 8, top: 0),
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage("assets/plus.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                //   child: Text(data,
                                //       style: TextStyle(
                                //           fontSize: 16, color: Colors.black),
                                //       textAlign: TextAlign.center))
                              )
                            ],
                          ),
                        ],
                      ))))
              .toList(),
        ),
      ),
    );
  }
}
