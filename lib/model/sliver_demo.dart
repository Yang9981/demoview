import 'package:flutter/material.dart';
import 'post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}


class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2 ,   //显示数量
        crossAxisSpacing: 8.0, //副轴间距
        mainAxisSpacing: 8.0,  //主轴间距
        childAspectRatio: 1.0, //网格视图项目显示的比例
      ),
      delegate:SliverChildBuilderDelegate(
            (BuildContext context,int index)
        {
          return Container(
            child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,),
          );
        },
        childCount: posts.length, //视图数量
      ),
    );
  }
}


class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate:SliverChildBuilderDelegate(
            (BuildContext context,int index)
        {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 14.0,
              child: Container(
                child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,width: 50,height: 300,),
              ),
            )
          );
        },
        childCount: posts.length, //视图数量
      ),
    );
  }
}



