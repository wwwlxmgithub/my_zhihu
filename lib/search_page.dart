
import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
    void _search(){

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("搜索"),
        ),
        body: Card(
            child: Column(

                children: <Widget>[
                    TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            labelText: '请输入你的姓名',
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent))),
                        style: TextStyle(fontSize: 16.0, color: Colors.redAccent),
                    ),
                    MaterialButton(onPressed: _search,
                        child: Text("搜索", style: TextStyle(color: Colors.white),),
                        color: Colors.redAccent,
                    )
                ],
            ),
        ),
      );
  }
}
