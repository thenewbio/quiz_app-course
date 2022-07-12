import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function()? resetHandler;

  const Result(
      {Key? key, required this.resetHandler, required this.resultScore})
      : super(key: key);

  String get resultPhrase {
    var resultTxt = "You did it!";
    if (resultScore >= 16) {
      resultTxt = "You are Awesome and Innocent";
    } else if (resultScore <= 12) {
      resultTxt = "pretty likeable";
    } else if (resultScore <= 16) {
      resultTxt = "You are ---- strange";
    } else {
      resultTxt = "You are so bad";
    }
    return resultTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              textColor: Colors.purple,
              onPressed: resetHandler,
              child: Text('Restart')),
          // AnimatedButton()
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         primary: Colors.orange, onPrimary: Colors.white),
          //     // color: Colors.blue,
          //     // style: ButtonStyle(
          //     //     backgroundColor: MaterialStateProperty.all(Colors.purple),
          //     //     foregroundColor: MaterialStateProperty.all(Colors.white)),
          //     child: Text('A rasied button'),
          //     onPressed: () {
          //       print('A raised button');
          //     }),
          // TextButton(
          //     style: TextButton.styleFrom(primary: Colors.orange),
          //     // color: Colors.purple,
          //     child: Text('A Flat button'),
          //     onPressed: () {
          //       print('A Flat button');
          //     }),
          // OutlinedButton(
          //   style: ButtonStyle(),
          //     // borderSide: BorderSide(color: Colors.red),
          //     child: Text('outline button'),
          //     onPressed: () {
          //       print('');
          //     })
        ],
      ),
    );
  }
}
