import 'package:flutter/material.dart';

class Post{
  final String title;
  final String author;
  final String imgeUrl;
  Post({
    this.title,
    this.author,
    this.imgeUrl
  });
}
final List<Post> posts=[
  Post(
    title: '英雄联盟',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/895d25927a5d437450ae9c841789a287f675777b.jpg@880w_388h_1c_95q',
  ),
  Post(
    title: '天涯明月刀',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/sycp/creative_img/202010/4114351be33c3c823b0ba815c66ccdc1.jpg@880w_388h_1c_95q',
  ),
  Post(
    title: '小电视',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/c33a05d9ff864a4f07738e91f6a45a83734032f8.jpg@880w_388h_1c_95q',
  ),
  Post(
    title: '东尼',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/95617ea5a4904e8677d715bdc1a6b65c8992f9fc.png@880w_388h_1c_95q',
  ),
  Post(
    title: 'Hanser',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/c137c177152ba85972b541ae0596951778fdd342.png@620w_220h.webp',
  ),
  Post(
    title: '大司马',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/edc9aa082672aeb421ea7c72596aad5b81482a16.jpg@620w_220h.webp',
  ),
  Post(
    title: '诸葛村夫',
    author: 'bilibili',
    imgeUrl:'https://i0.hdslb.com/bfs/archive/218efe6a9e929c0fbc6918d46f4e2e0a80e02696.jpg@620w_220h.webp',
  ),
];