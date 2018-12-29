import 'package:flutter/material.dart';
import 'package:my_zhihu/home_page.dart';
import 'package:my_zhihu/idea_page.dart';
import 'package:my_zhihu/member_page.dart';
import 'package:my_zhihu/my_page.dart';
import 'package:my_zhihu/notice_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
         primarySwatch: Colors.blue,
         primaryColor: Colors.white,
         accentColor: Colors.redAccent

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _widgetOptions = [HomePage(), IdeaWidget(), MemberWidget(), NoticeWidget(), MyWidget()];
  void _onItemTapped(int index) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(activeIcon: Icon(Icons.home, color: Colors.blue,) , icon: Icon(Icons.home, color: Colors.grey,), title: Text('首页', style: TextStyle(color: Colors.grey,),)),
        BottomNavigationBarItem(activeIcon: Icon(Icons.all_inclusive, color: Colors.blue,) ,icon: Icon(Icons.all_inclusive, color: Colors.grey,), title: Text('想法', style: TextStyle(color: Colors.grey,))),
        BottomNavigationBarItem(activeIcon: Icon(Icons.stars, color: Colors.blue,) ,icon: Icon(Icons.stars, color: Colors.grey,), title: Text('会员', style: TextStyle(color: Colors.grey,))),
        BottomNavigationBarItem(activeIcon: Icon(Icons.notifications, color: Colors.blue,) ,icon: Icon(Icons.notifications, color: Colors.grey,), title: Text('通知', style: TextStyle(color: Colors.grey,))),
        BottomNavigationBarItem(activeIcon: Icon(Icons.person, color: Colors.blue,) ,icon: Icon(Icons.person, color: Colors.grey,), title: Text('我的', style: TextStyle(color: Colors.grey,))),
        ], currentIndex: _selectedIndex, fixedColor: Colors.blue, onTap: _onItemTapped,type: BottomNavigationBarType.fixed, // 不加fixed属性的话，除当前item外，其他item的字都不显示
       ),
    );
  }
}
