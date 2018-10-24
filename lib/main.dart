import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_navigation_drawyer/new_page.dart';
import 'package:flutter_app_navigation_drawyer/new_page_two.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.red,
          primaryColor:
              defaultTargetPlatform == TargetPlatform.iOS ? Colors.red : null),
      home: new HomePage(),
      // routes: <String,WidgetBuilder>{
      // "/a" : (BuildContext context) => new NewPage("Android"),
      // },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawyer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Samrat19",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              accountEmail: new Text(
                "abc@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: new Text(
                  "S",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  child: new Text(
                    "D",
                    style: TextStyle(fontSize: 22.0, color: Colors.blueAccent,),
                  ),
                )
              ],
            ),
            new ListTile(
              title: new Text(
                "ANDROID",
                style: TextStyle(color: Colors.green,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.android),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage()));
              },
            ),
            new ListTile(
              title: new Text(
                "IOS",
                style: new TextStyle(color: Colors.blueAccent,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.devices),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPageOne()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text(
                "CLOSE",
                style: new TextStyle(color: Colors.redAccent,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        color: Colors.cyan,
        child: new Center(
          child: new Text("Welcome",
            style:
            new TextStyle(color: Colors.white,
                fontSize: 40.0
            ),),
        ),
      ),
    );
  }
}
