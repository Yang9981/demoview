import 'package:flutter/material.dart';
import 'post.dart';


class ViewDemo extends StatelessWidget {
  Widget _pageitembuilder(BuildContext context,int index)
  {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,),
        ),
        Positioned(
          left: 8.0,
          bottom: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(posts[index].author),
            ],
          ),
        )
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageitembuilder,
      itemCount: posts.length,
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //pageSnapping: false,  //页面滚动
      //reverse: true,//页面反转
      //scrollDirection: Axis.horizontal//页面滚动,
      onPageChanged: (currentPage)=>debugPrint('Page:$currentPage'),//回调的时候打印索引值
      controller: PageController(
        initialPage: 0,//显示的第一个页面是索引值为0的页面
        keepPage: true,//记住滚动到的页面
        viewportFraction: 1,//页面比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.cyan,
        ),
      ],
    );
  }
}


class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Container(

        ),
      ],
    );
  }
}

