import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTooltip extends StatefulWidget {
  @override
  _MyTooltip createState() => _MyTooltip();
}

double height = 50.0;

class _MyTooltip extends State<MyTooltip> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Tooltip(
            message: "Container",
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.tealAccent,
            ),
          ),
          Tooltip(
            message: "TextformField",
            child: TextFormField(

            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Tooltip(
                message: "Hello",
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.tealAccent,
                ),
              ),
              Tooltip(
                message: "World",
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                ),
              ),
              Tooltip(
                message: "Nanien",
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                ),
              ),

            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "FloatButton",
        onPressed: () {},
        child: Icon(Icons.send),
      ),
    );
  }
}
