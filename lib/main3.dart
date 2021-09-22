import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Study'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  List<Widget> _getData(){
    var list = <Widget>[];
    for (var i=0;i<20;i++){
      list.add(
          ListTile(
              title:Text("我是$i列表")
          )
      );
    }
    return list;
/*      [
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text('我是一个列表')
      ),
      ListTile(
          title: Text('我是一个列表')
      ),
    ];*/
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children:this._getData()
    );
  }
}