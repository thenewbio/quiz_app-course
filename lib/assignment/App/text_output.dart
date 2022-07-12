import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String maintext;
  const TextOutput({Key? key, required this.maintext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(maintext);
  }
}
