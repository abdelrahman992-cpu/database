import 'package:flutter/material.dart';
import 'data.dart';
void main() {
  runApp(new MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
const MyFlutterApp({Key? key , required this.people}):super(key : key)
  final People people;
  @override //دالة ترجع متغير من نوع ويدجت أو ما يشتق منه
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "App",
        home: new Scaffold(
            appBar: new AppBar(
                //الشريط اللي فوق
                title:Text('${people.name}')),
            body:Column(children: [
              Container(
                height:400,
                width:double.infinity,
                decoration:BoxDecoration(
                 image:DecorationImage(
                   image:AssetImage('${people.img}'),
                   fit:BoxFit.cover ) 
                )
              )
            ],) ));
  }
}
