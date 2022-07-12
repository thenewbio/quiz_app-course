import 'package:academind_courses/assignment/App/text_control.dart';
import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() {
    return _MyApp1State();
  }
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Assignment'),
            centerTitle: true,
          ),
          body: TextControl()),
    );
  }
}
