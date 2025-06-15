import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0.0, 0.0),
      //spaceBetween:剩下的空间平均分布到小部件之间!!!
      //spaceAround:剩下的空间平均分布到小部件周围!!!
      //spaceEvenly:剩下的空间和小部件一起平均分!!!
      //Expanded: 在主轴方法不会剩下间距，将被Expanded拉伸
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//主轴
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(child: Container(child: Text('你好', style: TextStyle(fontSize: 15),), color: Colors.red)),
          Expanded(child: Container(child: Text('哎呦', style: TextStyle(fontSize: 30),), color: Colors.blue)),
          Expanded(child: Container(child: Text('哎呦嘿', style: TextStyle(fontSize: 60),), color: Colors.white)),
        ],
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: 300,
      height: 300,
      alignment: Alignment(0, 0),
      child: Container(
        color: Colors.blue,
        height: 150,
        child: AspectRatio(
            aspectRatio: 1/1,
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: const Alignment(0, -1),
      child: Stack(
        children: [
          Positioned(
              child: Container(
              color: Colors.white,
              width: 200,
              height: 200,
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: const Icon(Icons.search_off),
            ),
            left: 0,
          ),
          Positioned(
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 50,
              child: const Icon(Icons.search),
              margin: EdgeInsets.only(right: 20),
            ),
            right: 0,
          ),
        ],
      ),
    );
  }
}


