import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHero extends StatefulWidget {
  @override
  _MyHero createState() => _MyHero();
}

double height = 50.0;

class _MyHero extends State<MyHero> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
          child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              return Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Mario(),
              ));
            },
            child: Container(
              child: Hero(
                  tag: Mario(),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              return Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Mario(),
              ));
            },
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.orange,
              child: Hero(tag: Mario(), child: Container()),
            ),
          ),
          InkWell(
            onTap: () {
              return Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Mario(),
              ));
            },
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue,
              child: Hero(tag: Mario(), child: Container()),
            ),
          ),
        ],
      )),
    );
  }
}

class Mario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: InkWell(
      onTap: () => Navigator.pop(context),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/08/28/16/17/super-mario-2690254_960_720.jpg"),
            ),
            Card(
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            )
          ],
        ),
      ),
    ));
  }
}
