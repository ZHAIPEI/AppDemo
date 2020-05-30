import 'package:flutter/material.dart';
import 'package:todolist/pages/left_menu.dart';
import 'package:todolist/pages/account_center.dart';

class GunqiuScreen extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigration',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new LeftMenu()));
          }
        ),
        title:Text('滚球'),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions:<Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed:(){}),
          new IconButton(
            icon: new Icon(Icons.account_circle), 
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new AccountCenter()));
            }
          )
        ],
      ),
    );
  }
  
}