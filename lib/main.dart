import 'package:bottom_navigation/HomePage.dart';
import'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent
      ),
      title: "Bottom Navigation Demo",
      color: Colors.white,
      home: HomePage(),
    );
  }
}
