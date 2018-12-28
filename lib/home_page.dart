
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
    @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Tabbed app bar'),
            ),
        ),
    );
  }
}

class Choice {

}
const List<Choice> choices = const <Choice>[];