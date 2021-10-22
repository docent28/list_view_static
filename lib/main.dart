import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building List View Static"),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

class _myListView extends StatelessWidget {
  const _myListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 450),
      scrollDirection: Axis.horizontal,
      itemExtent: 300,
      children: [
        ListTile(
          title: Text("Sun"),
          subtitle: Text("Today Clear"),
          leading: Icon(Icons.wb_sunny),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Cloudy"),
          subtitle: Text("Today Clear"),
          leading: Icon(Icons.wb_cloudy),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text("Show"),
          subtitle: Text("Today Clear"),
          leading: Icon(Icons.ac_unit),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
