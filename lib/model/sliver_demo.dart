import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('网格视图',style: TextStyle(
            //   fontSize: 25,
            //   fontWeight: FontWeight.bold
            // ),),
            centerTitle: true, //标题居中
            // pinned: true,   固定
            floating: true,  //向上一拉 appbar就会显示
            expandedHeight: 150, //隐藏空间
            flexibleSpace: FlexibleSpaceBar(
              title: Text('ninghao flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3.0
                ),
              ),
              background: Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3377593045,3576822894&fm=11&gp=0.jpg',fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(10.0),
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
              borderRadius: BorderRadius.circular(20.0),  //圆角
              elevation: 15.0,//阴影
              shadowColor: Colors.lightBlueAccent.withOpacity(0.8), //阴影颜色
              child:Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9, //比例
                    child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,), //图片
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



