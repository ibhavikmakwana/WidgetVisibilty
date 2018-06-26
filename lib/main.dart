import "package:flutter/material.dart";

void main() {
  runApp(new VisibilityApp());
}

class VisibilityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Manage Visibility",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Manage Visibility'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _visibility = false;

  void _changeVisibility(bool visibility) {
    setState(() {
      _visibility = visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              child:
                  _visibility ? new FlutterLogo(size: 200.0) : new Container(),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(top: 16.0),
                  child: new Column(
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeVisibility(true);
                        },
                        child: Text("Visible"),
                      ),
                    ],
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 16.0),
                  child: new Column(
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          _changeVisibility(false);
                        },
                        child: Text("Hide"),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
