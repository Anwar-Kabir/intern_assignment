import 'package:flutter/material.dart';
import 'package:intern_assignment/bottom_navigation_bar/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',

        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(),
    );
  }
}
