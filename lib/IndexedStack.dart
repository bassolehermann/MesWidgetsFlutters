import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyIndexedStack extends StatefulWidget {
  @override
  _MyIndexedStack createState() => _MyIndexedStack();
}

class _MyIndexedStack extends State<MyIndexedStack> {
  double d = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 8,
              child: Center(
                child: IndexedStack(
                  index: d.toInt(),
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 300.0,
                      width: 300.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 300.0,
                      width: 300.0,
                    ),
                    Container(
                      color: Colors.green,
                      height: 300.0,
                      width: 300.0,
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Center(
                child: Slider(
                  min: 0.0,
                  max: 2.0,
                  value: d,
                  activeColor: Colors.blue,
                  onChanged: (double b) {
                    setState(() {
                      if (d <= 3) {
                        d = b;
                      }
                    });
                  },
                ),
              )),

        ],
      ),
    );
  }
}
