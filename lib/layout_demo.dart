import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
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
