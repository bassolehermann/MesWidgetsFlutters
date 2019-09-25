import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'list.dart';

class MySliverAppBar extends StatefulWidget {
  @override
  _MySliverAppBar createState() => _MySliverAppBar();
}

class _MySliverAppBar extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('SliverAppBar'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('SliverAppBar'),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://cdn.pixabay.com/photo/2016/07/10/21/53/super-mario-1508624_960_720.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
