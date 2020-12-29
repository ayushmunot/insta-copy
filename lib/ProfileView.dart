import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instacopy/SettingsModal.dart';
import 'package:instacopy/CreateButtonModal.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
    return WillPopScope(
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
              child: Center(
                child: Text(
                  "Hello world",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
        onWillPop: () async => !Navigator.of(context).userGestureInProgress);
  }
}
