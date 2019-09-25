import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'list.dart';

class MySafeArea extends StatefulWidget {
  @override
  _MySafeArea createState() => _MySafeArea();
}

class _MySafeArea extends State<MySafeArea> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('SafeArea'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: SafeArea(
          bottom: true,
            left: true,
            right: true,

            child: ListView.builder(
                itemCount: item.length,
                itemBuilder: (BuildContext context, i) {
                  return Container(
                    color: Colors.grey,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: ListTile(
                      title: Text(item[i],style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                  );
                })));
  }
}
