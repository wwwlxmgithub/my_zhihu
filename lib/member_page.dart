
import 'package:flutter/material.dart';
class MemberWidget extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => MemberWidgetState();
}

class MemberWidgetState extends State<MemberWidget> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("会员")),
        body: Center(
            child: Text("Hello 我是‘会员’"),
        ),
    );
  }
}