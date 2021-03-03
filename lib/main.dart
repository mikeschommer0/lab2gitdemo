import 'package:flutter/material.dart';
import 'letsmakeadeal.dart';
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lab 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Studio(owner: 'NBC'),
    );
  }
}

class Studio extends StatelessWidget {
  String owner;
  Studio({this.owner});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Let\'s Make a Deal')), 
      body: LetsMakeADeal()
      )
    );
  }
}
