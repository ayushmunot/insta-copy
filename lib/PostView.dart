import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PostView extends StatefulWidget {
  @override
  PostViewState createState() => PostViewState();
}

class PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          backgroundColor: Colors.black,
        ),
        child: Center(child: Text("Hello world!")));
  }
}
