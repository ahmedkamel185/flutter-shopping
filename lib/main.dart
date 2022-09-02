import 'package:flutter/material.dart';
import 'package:task/screens/home.dart';
import 'package:task/screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'sst-arabic'),
      home: test(),
    );
  }
}
