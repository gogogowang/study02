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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        ListTile(
          title:Text(
            '今天天气不错',
            style: TextStyle(
                fontSize: 28
            ),
          ) ,
          subtitle: Text('dajiaduochuquwan'),
        ),
        ListTile(
          title:Text('今天天气不错') ,
          subtitle: Text('dajiaduochuquwan'),
        ),
        ListTile(
          title:Text('今天天气不错') ,
          subtitle: Text('dajiaduochuquwan'),
        )
      ],
    );
  }
}