import 'package:demoview/model/view_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/post.dart';
import 'model/drawerdemo.dart';
import 'model/bottom_navbar.dart';
import 'model/basicdemo.dart';
import 'model/layout_demo.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imgeUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[index].title+'    '+posts[index].author,
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:(Text('TAB')),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.assignment), onPressed: null),
            IconButton(icon: Icon(Icons.autorenew), onPressed: null),
          ],
          bottom: TabBar(
            indicatorColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: <Widget>[
                Text('头条'),
                Text('财经'),
                Text('体育', textDirection: TextDirection.ltr,),
                Icon(Icons.accessible),
            ],
          ),
        ),
        body: TabBarView(
            children:<Widget>[
              ListView.builder(
                itemBuilder: _listItemBuilder,
                itemCount: posts.length,
              ),
              BasicDemo(),
              LayoutDemo(),
              ViewDemo(),
    ]
    ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }
}