import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding:EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i0.hdslb.com/bfs/archive/41f646747bed9e1ff87d4b395ed31c4fbc616bf8.jpg@206w_116h_1c_100q.webp'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.6), BlendMode.srcOver),
                  )
              ),
              accountName: Text('Yang',style: TextStyle(color: Colors.black,fontSize: 20),),
              accountEmail:Text('@qq.com',style: TextStyle(color: Colors.black,fontSize: 15),),
              currentAccountPicture:
              CircleAvatar(
                backgroundImage: NetworkImage('https://i0.hdslb.com/bfs/archive/32de3b60a39b9f4e463bfaafec9463328139bd35.jpg@206w_116h_1c_100q.webp'),
              )
          ),
          ListTile(
            title: Text('设置',textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('个人',textAlign: TextAlign.right,),
            trailing: Icon(Icons.person),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
