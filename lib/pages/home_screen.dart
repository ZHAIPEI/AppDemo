import 'package:flutter/material.dart';
import 'package:todolist/pages/account_center.dart';
import 'package:todolist/pages/left_menu.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('Home'),
      appBar: AppBar(
        leading: IconButton(
          key: Key('menuIcon'),
          icon: Icon(Icons.menu), 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new LeftMenu()));
          }
        ),
        title:Text('APP DEMO'),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions:<Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed:(){}),
          new IconButton(icon: new Icon(
            Icons.account_circle), 
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => new AccountCenter()));
            },          
          )
        ],
      ),

/*  -------左侧drawer菜单-------
      drawer:Drawer(
        child: ListView(
          children:<Widget>[
            DrawerHeader(
              child:Text('APP DEMO',textAlign:TextAlign.center),
              decoration: BoxDecoration(color:Colors.red),
            )
          ]
        ),
      )
*/

    );
  }
}