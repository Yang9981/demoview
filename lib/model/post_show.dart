import 'package:flutter/material.dart';
import 'post.dart';

class PostShow extends StatelessWidget {
  final post;
  PostShow({
    @required this.post,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imgeUrl),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                Text('${post.author}',style: Theme.of(context).textTheme.subtitle2,),
                SizedBox(height: 32,),
              ],
            ),
          ),
        ],
      )
    );
  }
}
