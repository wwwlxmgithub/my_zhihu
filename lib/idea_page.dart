
import 'package:flutter/material.dart';
class IdeaWidget extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => IdeaWidgetState();
}

class IdeaWidgetState extends State<IdeaWidget> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("想法")),
        body: Center(
            child: Text("Hello 我是‘想法’"),
        ),
    );
  }
}