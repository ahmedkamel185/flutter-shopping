// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/utilities/colors.dart';
import 'package:task/utilities/localization.dart';

// ignore: camel_case_types
class navigationBar extends StatefulWidget {
  navigationBar({Key? key}) : super(key: key);

  @override
  State<navigationBar> createState() => _navigationBarState();
}

// ignore: camel_case_types
class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/three-dots.png"),
                color: ColorConstants.lightGray,
              ),
              label: MORE,
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/cart-check.png"),
                color: ColorConstants.lightGray,
              ),
              label: CREATEORDER,
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/noun_Document_3.png"),
                color: ColorConstants.lightGray,
              ),
              label: MURCHANTS,
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/wallet2.png"),
                color: ColorConstants.lightGray,
              ),
              label: WALLET,
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/house.png"),
              color: ColorConstants.lightGreen,
            ),
            label: HOME,
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.lightGreen,
        backgroundColor: Colors.white, // <-- T
        currentIndex: 4,
        iconSize: 40,
        elevation: 5);
  }
}
