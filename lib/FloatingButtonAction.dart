import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'list.dart';

class MyFloatingButton extends StatefulWidget {
  @override
  _MyFloatingButton createState() => _MyFloatingButton();
}

class _MyFloatingButton extends State<MyFloatingButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingButtonAction'),
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
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 40.0,
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
