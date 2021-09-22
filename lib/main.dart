import 'package:flutter/material.dart';
import 'res/listData.dart';

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
  var tempList = listData.map((value){
    return ListTile(
      leading: Image.network(value['imageurl']),
      title:Text(value['title'])
      );
    });
    return tempList.toList();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children:this._getData()
    );
  }
}