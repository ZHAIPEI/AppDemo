import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart'; <- 这个有问题，尽量别用，直接用号码代替 byey


class AccountCenter extends StatelessWidget{    //静态布局

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.fast_rewind), 
          onPressed: (){
            Navigator.pop(context);
          } 
        ),
        title: Text('账号中心'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions:<Widget>[
          new IconButton(icon: new Icon(Icons.fast_forward), onPressed:(){})
        ]
      ),
      body: ListView(//不会出现纵向溢出
        children: <Widget>[  
          _topHeader(),
          _unsettledBets(),
          _settledBet(),
          _rulesPlay(),
          _chipSettings(),
        ], 
      ),
    );
  }

  Widget _topHeader(){
    return Container(
      width: 70,
      padding: EdgeInsets.all(20),
      color: Colors.pinkAccent,
      child: Column(
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(top:30),
            child: ClipOval(
              child:Image.network('https://5b0988e595225.cdn.sohucs.com/images/20190620/da96e25f08954e189b753b1b5aae0d1b.jpeg')
            ),
          ),
          Container(
            margin:EdgeInsets.only(top:10),
            child: Text(
              'QAtester001',
              style:TextStyle(
                fontSize:36,
                color:Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }


  //通用List 未结算注单

  Widget _unsettledBets(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading:Icon(Icons.assessment),
        title: Text('未结算注单'),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

//通用List 已结算注单
  Widget _settledBet(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading:Icon(Icons.assignment),
        title: Text('已结算注单'),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

//通用List 玩法规则
  Widget _rulesPlay(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading:Icon(Icons.help),
        title: Text('玩法规则'),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

  //通用List 筹码设置
  Widget _chipSettings(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading:Icon(Icons.settings),
        title: Text('筹码设置'),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }


}