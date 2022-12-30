import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("darrage"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: peopledetail.length,
          itemBuilder: (context, index) {
            final people = peopledetail[index];
            return Card(
                child: ListTile(
                    title: Text('${people.name}'),
                    subtitle: Text('${people.clas}'),
                    leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('${people.img}'),
                                fit: BoxFit.cover))),
                    trailing: Icon(Icons.arrow_right_outlined)));
          },
        ),
      ),
    );
  }
}
