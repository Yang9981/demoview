import 'package:flutter/material.dart';
import 'post.dart';


class GridDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length)   //定义一个列表界面，参数length
  {
    return List.generate(length, (int index){      //生成一个列表长度是LENGTH，index是索引值
      return Container(  //每一个列表项内容是一个盒子，
        child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,),//盒子里是图片
        height: 100,
        width: 100,
      );
    });
  }


  Widget _gridItemBuilder(BuildContext context,int index) //定义一个界面里面放了图片
  {
      return Container(
        padding: EdgeInsets.all(10),
        child: Image.network(posts[index].imgeUrl,fit: BoxFit.fill,),
        height: 150,
        width: 150,
      );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: posts.length,
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150), //交叉轴最大尺寸
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  //控制视图的生成
          crossAxisCount: 2,
          childAspectRatio: 1.6,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: _gridItemBuilder, //生成界面
    );

    //GridView.extent(maxCrossAxisExtent: 150) 交叉轴上的最大尺寸，crossAxisCount这个属性是GridView.count特有的


    // return GridView.count(
    //   crossAxisCount: 2,
    //   children: _buildTitles(posts.length),
    //   mainAxisSpacing: 20.0,
    //   crossAxisSpacing: 20.0,
    // );
  }
}


