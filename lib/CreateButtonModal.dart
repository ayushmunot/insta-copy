// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateButtonModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double actionPadding = MediaQuery.of(context).size.width * 0.04;
    double actionBottomBorderWidth = 0.1;
    // TODO: implement build
    return Material(
      child: Container(
        color: Color.fromARGB(255, 18, 18, 18),
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 3.0, top: 5.0),
                  child: Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: new Border(
                        bottom: new BorderSide(
                            color: Colors.grey,
                            width: actionBottomBorderWidth))),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Center(
                    child: Text(
                      "Create",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped post");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Post",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(Icons.post_add, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped story");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Story",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.timelapse, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped story highlight");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Story Highlight",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.heart_circle, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped IGTV Video");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "IGTV Video",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.tv, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped reel");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Reel",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(Icons.local_movies, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped guide");
                },
                hoverColor: Colors.grey,
                focusColor: Colors.grey[600],
                title: Container(
                    decoration: BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Colors.grey,
                                width: actionBottomBorderWidth))),
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      child: Text(
                        "Guide",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.news, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
