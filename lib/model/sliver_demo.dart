import 'package:flutter/material.dart';
import 'post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('网格视图',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            centerTitle: true,
            // pinned: true,   固定
            floating: true,  //向上一拉 appbar就会显示
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('ninghao flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3.0
                ),
              ),
            ),
          ),
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
        crossAxisCount:2 ,   //一行的显示数量
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
              child:Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,),
                  ),
                  Positioned(
                    top: 32.0,
                    right: 20.0,
                    child: Column(
                      children: <Widget>[
                        Text(posts[index].title,style: TextStyle(color: Colors.white.withOpacity(1),fontSize: 25),),
                        Text(posts[index].author,style: TextStyle(fontSize:20,color: Colors.white ),)
                      ],
                    ),
                  )
                ],
              )
            )
          );
        },
        childCount: posts.length, //视图数量
      ),
    );
  }
}



