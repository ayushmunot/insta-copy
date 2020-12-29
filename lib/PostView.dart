import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instacopy/PostsList.dart';

class PostView extends StatefulWidget {
  @override
  PostViewState createState() => PostViewState();
}

class PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        // alignment: ,
        color: Colors.black,
        child: PostsList(),
      ),
      navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.black,
          leading: Image(
            image: AssetImage('assets/insta_logo(1).png'),
            width: MediaQuery.of(context).size.width * 0.45,
            // fit: BoxFit.fitWidth,
            // height: 20,
          ),
          trailing: Container(
              // alignment: Alignment.centerRight,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
                onPressed: () => print("add post"),
              ),
              CupertinoButton(
                padding: EdgeInsets.all(0),
                child: Icon(Icons.favorite_border_rounded, color: Colors.white),
                onPressed: () => print("activity"),
              ),
              CupertinoButton(
                padding: EdgeInsets.all(0),
                child: Icon(
                  CupertinoIcons.text_bubble,
                  color: Colors.white,
                ),
                onPressed: () => print("message"),
              )
            ],
          ))),
    );
  }
}
