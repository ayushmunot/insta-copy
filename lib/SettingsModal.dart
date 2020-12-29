// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsModal extends StatelessWidget {
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
                  padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
                  child: Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped settings");
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
                        "Settings",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.gear, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped archive");
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
                        "Archive",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.arrow_counterclockwise,
                      color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped activity");
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
                        "Your Activity",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.clock, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped qr code");
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
                        "QR Code",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(CupertinoIcons.qrcode, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped saved");
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
                        "Saved",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(CupertinoIcons.bookmark, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped cart");
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
                        "Cart",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.cart, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped close friends");
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
                        "Close Friends",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.list_bullet, color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  print("tapped activity");
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
                        "Discover People",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
                leading: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Icon(CupertinoIcons.person_badge_plus,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
