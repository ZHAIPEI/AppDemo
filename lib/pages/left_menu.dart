import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('LeftMenu'),
      appBar: AppBar(
        title: const Text('APP DEMO-Leftmenu'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: ListView(
        children:<Widget>[
//        const ListTile(title:Text('足球')), ----无效

          ExpansionTile(
            title:const Text('足球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('篮球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('网球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('电子竞技'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('冰上曲棍球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),
          
          ExpansionTile(
            title:const Text('羽毛球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),
          
          ExpansionTile(
            title:const Text('棒球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('美式足球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('乒乓球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('澳洲足球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('英式橄榄球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('手球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('特殊项目'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

          ExpansionTile(
            title:const Text('板球'),
            backgroundColor:Theme.of(context).accentColor.withOpacity(0.025),
            children:const <Widget>[
              ListTile(title:Text('让球/大小')),
              ListTile(title:Text('1x2(半场&全场)')),
              ListTile(title:Text('总进球/单双')),
              ListTile(title:Text('总进球/单双(半场)')),
              ListTile(title:Text('半全场')),
              ListTile(title:Text('最先/最后进球')),
              ListTile(title:Text('优胜冠军')),
            ]
          ),

//          const ListTile(title: Text('Bottom'))   ---无效
        ],
      ),
    );
  }
  
}