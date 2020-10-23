import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         SizedBox(
           width: 100,
           height: 100,
           child: Container(
             alignment: Alignment.center,
             margin: EdgeInsets.all(5),
             decoration: BoxDecoration(
               color: Colors.lightBlue,
               borderRadius: BorderRadius.circular(60)
             ),
             child: Icon(Icons.access_alarm),
           ),
         ),
        ],
      )
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icons;
  final double size;

  IconBadge(this.icons,{
    this.size=32.0,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icons,size: size,color: Colors.white,),
      width: size+60,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

