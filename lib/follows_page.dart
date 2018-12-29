
import 'package:flutter/material.dart';
import 'dart:math';
class FollowsPage extends StatefulWidget {
    FollowsPage({Key key}) : super(key: key);
    @override
  State<StatefulWidget> createState() => FollowsPageState();
}

class FollowsPageState extends State<FollowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView.builder(
            itemBuilder: (BuildContext context, int index) => EntryItem(entry: data[index],),
            itemCount: data.length,
        )
    );
  }
}
class EntryItem extends StatelessWidget {
    EntryItem({Key key, this.entry}) : super(key: key);
    final Entry entry;
    @override
    Widget build(BuildContext context) {
        return Scaffold();
    }
}
class Entry{
    const Entry(this.avatar, this.name, this.title, this.desc, this.imageUrl, this.likes, this.replies);
    final IconData avatar;
    final String name;
    final String title;
    final String desc;
    final String imageUrl;
    final int likes;
    final int replies;
}
const data = <Entry>[
    const Entry(Icons.account_circle, '', '', '', '', 132, 42),
    const Entry(Icons.stars, '', '', '', '', 12, 42),
    const Entry(Icons.watch_later, '', '', '', '', 12, 42),
    const Entry(Icons.add_circle, '', '', '', '', 12, 42),
    const Entry(Icons.adjust, '', '', '', '', 12, 42),
    const Entry(Icons.album, '', '', '', '', 12, 42),
    const Entry(Icons.arrow_drop_down_circle, '', '', '', '', 12, 42),
    const Entry(Icons.block, '', '', '', '', 12, 42),
    const Entry(Icons.blur_circular, '', '', '', '', 12, 42),
    const Entry(Icons.brightness_1, '', '', '', '', 12, 42),
    const Entry(Icons.camera, '', '', '', '', 12, 42),
    const Entry(Icons.cancel, '', '', '', '', 12, 42),
    const Entry(Icons.check_circle, '', '', '', '', 12, 42),
    const Entry(Icons.cloud_circle, '', '', '', '', 12, 42),
    const Entry(Icons.do_not_disturb_on, '', '', '', '', 12, 42),
    const Entry(Icons.error, '', '', '', '', 12, 42),
    const Entry(Icons.explore, '', '', '', '', 12, 42),
    const Entry(Icons.tonality, '', '', '', '', 12, 42),
    const Entry(Icons.timelapse, '', '', '', '', 12, 42),
];



