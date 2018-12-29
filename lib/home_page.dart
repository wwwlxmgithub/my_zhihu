
import 'package:flutter/material.dart';
import 'package:my_zhihu/search_page.dart';
import 'package:my_zhihu/follows_page.dart';
class HomePage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
    void _onTap(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
    }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
                title: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: '请输入你的姓名',
                        fillColor: Colors.grey),
                    style: TextStyle(fontSize: 16.0),
                    onTap: _onTap,
                ),
                bottom: TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 16.0),
                    unselectedLabelColor: Colors.grey,
                    isScrollable: false,
                    tabs: choices.map((Choice it) => Tab(
                        text: it.title,
                    )).toList(),
                ),
            ),
            body: TabBarView(children: choices.map(
                (choice){
                    switch(choice.title) {

                    }
                }
            ).toList(),
        ),
      )
    );
  }
}

class Choice {
    const Choice({this.title, this.page});
    final String title;
    final Widget page;
}
List<Choice> choices = const <Choice>[
     Choice(title: '关注'),
     Choice(title: '推荐'),
     Choice(title: '热榜'),
     Choice(title: '视频'),
];