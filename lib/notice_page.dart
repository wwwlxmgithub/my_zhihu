
import 'package:flutter/material.dart';
class NoticeWidget extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => NoticeWidgetState();
}

class NoticeWidgetState extends State<NoticeWidget> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("通知")),
        body: Center(
            child: Text("Hello 我是‘通知’"),
        ),
    );
  }
}