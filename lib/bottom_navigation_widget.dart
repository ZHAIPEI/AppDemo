import 'package:flutter/material.dart';
import 'pages/gunqiu_screen.dart';
import 'pages/home_screen.dart';
import 'pages/richeng_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.red;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list..add(HomeScreen())..add(GunqiuScreen())..add(RichengScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('BottomNavigation'),

      body: list[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: _bottomNavigationColor),title: Text('德赢',style:TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(icon: Icon(Icons.sentiment_neutral,color: _bottomNavigationColor),title: Text('滚球',style:TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(icon: Icon(Icons.sentiment_satisfied,color: _bottomNavigationColor),title: Text('日程',style:TextStyle(color: _bottomNavigationColor))),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}