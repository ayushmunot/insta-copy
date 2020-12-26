import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PostView extends StatefulWidget {
  @override
  PostViewState createState() => PostViewState();
}

class PostViewState extends State<PostView> {
<<<<<<< HEAD

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: null,
    navigationBar: Cupertino,);
  }
  
}

=======
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
>>>>>>> a405f6cd8e0226af7c12faf1b716e37fa4e4dbee
