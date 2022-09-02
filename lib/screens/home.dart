// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:task/utilities/colors.dart';
import 'package:task/utilities/localization.dart';
import 'package:task/widgets/grid_view.dart';
import 'package:task/widgets/navigationBar.dart';
import '../widgets/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      // ignore: unnecessary_new
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                // ignore: unnecessary_new
                caption: new TextStyle(
                    color: Colors
                        .yellow))), // sets the inactive color of the `BottomNavigationBar`

        child: navigationBar(),
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/gradient_backgr.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            //padding: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.only(top: 50, left: 0, right: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 6),
                      child: IconButton(
                        icon: Image.asset(
                          "assets/notification_ic.png",
                          height: 26,
                          width: 23,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                        flex: 1, // Change this property to align your content
                        child: Image.asset(
                          'assets/logo.png',
                          width: 79,
                          height: 30,
                          alignment: Alignment.center,
                        )),
                    Container(
                      padding: EdgeInsets.only(right: 55),
                    ) // The arrow icon in the right of the row
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 18, left: 16, right: 16, bottom: 16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('do something');
                        },
                        child: Container(
                          width: 57,
                          height: 57,
                          margin: EdgeInsets.only(right: 8.2),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/not_signed_in.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('do something');
                        },
                        child: Container(
                            width: 57,
                            height: 57,
                            margin: EdgeInsets.only(right: 8.2),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/search_by_number.png",
                                ),
                              ),
                            ),
                            child: IconButton(
                              highlightColor: Colors.amberAccent,
                              color: Colors.greenAccent,
                              iconSize: 57,
                              icon: Image.asset(
                                "assets/search_by_number.png",
                                width: double.infinity,
                                height: double.infinity,
                                // alignment: Alignment.topRight,
                                // color: Colors.white,
                              ),
                              onPressed: () {},
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          height: 57,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons
                                    .search, // The arrow icon in the right of the row
                                size: 32,
                                color: Colors.black12,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    //  margin: EdgeInsets.only(bottom: 0),
                    // padding: EdgeInsets.all(0),
                    width: 1111,
                    decoration: BoxDecoration(
                      color: ColorConstants.grayBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          20,
                        ),
                        topLeft: Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16, bottom: 0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.black,
                                  child: horizontalListView(47.0, 112.0,
                                      ColorConstants.lightGreen, 6.0),
                                ),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: ColorConstants.darkGreenColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  width: 52,
                                  height: 46,
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.only(top: 15),
                                  child: Center(
                                      child: Text(ALL,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            height: -0.01,
                                            fontSize: 20,
                                          ))))
                            ],
                          ),
                        ),
                        CustomGridView(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
