import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Icon(
              Icons.add,
              size: 45,
            ),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            height: 200,
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  final TextStyle _textStyle = const TextStyle(
    fontSize: 16.0,
  );

  final String _lector = 'Hank';
  final String _title = 'Flutter高级进阶';

  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: ' 《Flutter高级进阶版》',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
          children: [
            TextSpan(
                text: '--',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red
                )),
            TextSpan(
                text: 'Hank',
                style: TextStyle(fontSize: 16.0, color: Colors.blue)),
          ]),
    );
  }
}