import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _BottomNavigationBarDemoState();
    }
  }

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex=0;
  void _onTapHandler( int index){
    setState((){
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('history'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pages),
          title: Text('pages'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          title: Text('add_circle'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('person'),
        ),
      ],
    );
  }
}