
import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("我的")),
        body: Center(
            child: Text("Hello 我是‘我的’"),
        ),
    );
  }
}