import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPlaceHolder extends StatefulWidget {
  @override
  _MyPlaceHolder createState() => _MyPlaceHolder();
}

class _MyPlaceHolder extends State<MyPlaceHolder> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceHolder'),
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
            flex: 1,
            child: Placeholder(
              fallbackHeight: 100.0,
              fallbackWidth: 0.0,
              color: Colors.red,
            ),
          ),
          Expanded( flex:1,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                child: Placeholder(
                  fallbackHeight: 300.0,
                  fallbackWidth: 200.0,
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                child: Placeholder(
                  fallbackHeight: 300.0,
                  fallbackWidth: 200.0,
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                child: Placeholder(
                  fallbackHeight: 300.0,
                  fallbackWidth: 200.0,
                  color: Colors.yellow,
                ),
              )
            ],
          ),),

          Expanded(flex: 1, child:Placeholder(
            fallbackWidth: 400.0,
            fallbackHeight: 400.0,
            color: Colors.green,
          ) )
        ],
      )
    );
  }
}
