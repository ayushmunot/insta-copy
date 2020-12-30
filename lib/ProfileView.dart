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

Future<void> _getData() async {
  print("refresh triggered");
}

class ProfileViewState extends State<ProfileView> {
  bool pressedUsernameModal = false;
  bool gridActive = true;
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
                    CupertinoSliverRefreshControl(
                      onRefresh: _getData,
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Card(
                          margin: EdgeInsets.zero,
                          color: Colors.black,
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
                                    // alignment: Alignment.,
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.1),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.08),
                                          child: Column(
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Post",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.08),
                                          child: Column(
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Followers",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.08),
                                          child: Column(
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Following",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )
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
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (!gridActive) {
                                          gridActive = !gridActive;
                                        }
                                      });
                                    },
                                    child: Container(
                                      // color: Colors.red,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: gridActive == true
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  width: gridActive == true
                                                      ? 1.0
                                                      : 0.0))),
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 5.0),
                                        child: Icon(
                                          CupertinoIcons.circle_grid_3x3,
                                          color: gridActive == true
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (gridActive) {
                                              gridActive = !gridActive;
                                            }
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: gridActive == true
                                                          ? Colors.transparent
                                                          : Colors.white,
                                                      width: gridActive == true
                                                          ? 0.0
                                                          : 1.0))),
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Icon(
                                              CupertinoIcons.person,
                                              color: gridActive == true
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ),
                                        )))
                              ],
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
                        }, childCount: 50),
                      ),
                    ),
                  ],
                ),
              )),
          onWillPop: () async => !Navigator.of(context).userGestureInProgress),
    );
  }
}
