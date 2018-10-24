import 'package:flutter/material.dart';

class NewPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new IOSHome(),
    );
  }
}

class IOSHome extends StatefulWidget {
  @override
  _IOSHomeState createState() => _IOSHomeState();
}

class _IOSHomeState extends State<IOSHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            "IOS",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
