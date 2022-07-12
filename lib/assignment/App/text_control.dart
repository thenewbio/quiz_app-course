import 'package:academind_courses/assignment/App/text_output.dart';
import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is first assignment';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('This is first assingnment'),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text('Change text'),
            onPressed: () {
              setState(() {
                _mainText = "You changed me";
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextOutput(maintext: _mainText)
        ],
      ),
    );
  }
}
