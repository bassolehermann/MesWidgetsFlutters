import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyFutureBuilder extends StatefulWidget {
  MyFutureBuilder({this.title, this.url});
  final String title;
  final String url;
  @override
  _MyFutureBuilder createState() => new _MyFutureBuilder();
}

class _MyFutureBuilder extends State<MyFutureBuilder> {
  Future getData() async {
    final response = await http.get('https://getProjectList');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(
          "FutureBuilder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: new FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none &&
              snapshot.hasData == null) {
            print(snapshot.data);
            return Container();
          }
          return ListView.builder(
              itemCount: snapshot.data.lenght,
              itemBuilder: (context, i) {
                return Container(
                  child: ListTile(
                    title: Text(snapshot.data[i]),
                  ),
                );
              });
        },
      ),
    );
  }
}
