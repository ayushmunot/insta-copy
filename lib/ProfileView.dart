import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instacopy/SettingsModal.dart';
import 'package:instacopy/CreateButtonModal.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  ProfileViewState createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileView> {
  bool pressedUsernameModal = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: WillPopScope(
          child: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.black,
                leading: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: GestureDetector(
                    onTapDown: (tapdeets) {
                      print("tap up");
                      setState(() {
                        pressedUsernameModal = true;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pressedUsernameModal = false;
                      });
                      print("tapped username modal");
                    },
                    child: Text(
                      "Username ᐯ",
                      style: TextStyle(
                          color:
                              pressedUsernameModal ? Colors.grey : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.plus,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            showCupertinoModalBottomSheet(
                                enableDrag: true,
                                bounce: true,
                                expand: false,
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => CreateButtonModal());
                            print("pressed create button");
                          }),
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.bars,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            showCupertinoModalBottomSheet(
                                enableDrag: true,
                                bounce: true,
                                expand: false,
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => SettingsModal());
                            print("pressed setting button");
                          })
                    ],
                  ),
                ),
              ),
              child: Container(
                color: Colors.black,
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Card(
                          color: Color.fromARGB(255, 18, 18, 18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15.0, bottom: 15.0, left: 10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CircleAvatar(
                                          radius: 35.0,
                                          backgroundImage: AssetImage(
                                              "assets/insta_logo(1).png"),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10.0),
                                          child: Text(
                                            "Username",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Stuff",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "0",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text("115",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text("95",
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 15.0),
                                child: Container(
                                  height: 33,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                      // color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                          color: Colors.grey[300], width: 0.3)),
                                  child: Padding(
                                    padding: EdgeInsets.zero,
                                    child: CupertinoButton(
                                      padding: EdgeInsets.zero,
                                      child: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 13.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        print("hellow world");
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }, childCount: 1),
                    ),
                    SliverStickyHeader(
                      header: Container(
                        child: Container(
                          color: Color.fromARGB(255, 18, 18, 18),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "hellow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Text(
                            "$index",
                            style: TextStyle(color: Colors.white),
                          );
                        }, childCount: 40),
                      ),
                    ),
                  ],
                ),
              )),
          onWillPop: () async => !Navigator.of(context).userGestureInProgress),
    );
  }
}
