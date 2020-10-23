import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i1.hdslb.com/bfs/archive/c8dbd25943f5ec53fe91d3e6d15b9b2cfeb6135f.jpg@336w_190h.webp'),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.hardLight),
          repeat: ImageRepeat.repeatY,
        )
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child:Icon(Icons.pool,color: Colors.white,size: 50.0,),
            padding: EdgeInsets.all(16.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 0.6),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0,20),
                  blurRadius: 25,
                  spreadRadius:-5,
                ),
              ],
            ),
          ),
          Container(
            child:RichText(
                text:TextSpan(
                    text: '李白,',
                    style: TextStyle(color: Colors.red,fontSize: 25)
                ),
            ) ,
          ),
        ],
      ),
    );
  }
}
