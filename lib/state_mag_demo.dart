import 'package:flutter/material.dart';

//渲染逻辑，任然是不可变的
class StateManagerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SMDState();
}

//状态管理
class _SMDState extends State<StateManagerDemo>{
  int count = 110;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('StateDemo'),
        ),
        body: Center(
          child: Chip(
              label: Text('$count')
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            setState(() {
              count += 1;
            });
            print("count = $count");
          },
        ),
      ),
    );
  }
}