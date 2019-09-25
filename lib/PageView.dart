import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageView createState() => _MyPageView();
}

class _MyPageView extends State<MyPageView> {
  final controller=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: PageView(
          controller: controller,
          children: <Widget>[
            Container(
              color: Colors.orange
            ),
            Container(
                color: Colors.white
            ),
            Container(
                color: Colors.green
            ),
          ],
        ),
      )
    );
  }
}
