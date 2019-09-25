import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MyFadeInImage extends StatefulWidget {
  @override
  _MyFadeInImage createState() => _MyFadeInImage();
}

double height = 50.0;

class _MyFadeInImage extends State<MyFadeInImage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: Card(
          child: FadeInImage.assetNetwork(
            placeholder: "https://media.giphy.com/media/jAYUbVXgESSti/giphy.gif",
             image: "https://cdn.pixabay.com/photo/2017/03/18/16/42/video-game-2154473_960_720.png"),
        ),
      ),
    );
  }
}
