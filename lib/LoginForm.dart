import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(
          // border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          backgroundColor: Colors.black,
        ),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.26),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.03),
                      child: Image(
                        image: AssetImage("assets/insta_logo(1).png"),
                        width: MediaQuery.of(context).size.width * 0.54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                      child: CupertinoTextField(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 18, 18, 18),

                            // border: Border.all(color: ),
                            borderRadius: BorderRadius.circular(5.0)),
                        placeholder: "Phone number, username or email",
                        placeholderStyle: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                        autofillHints: [AutofillHints.username],
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                      child: CupertinoTextField(
                        obscureText: true,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 18, 18, 18),
                            borderRadius: BorderRadius.circular(5.0)),
                        placeholder: "Password",
                        placeholderStyle: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                        autofillHints: [AutofillHints.password],
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      // width: ,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: CupertinoButton(
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blue[400]),
                            ),
                            onPressed: () {
                              print("hello forgot password");
                            }),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, top: 8.0, bottom: 8.0),
                            child: CupertinoButton(
                              color: Colors.blue[400],
                              onPressed: () {
                                Navigator.pushNamed(context, "/profileView");
                                // print("hello");
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      // height: 20,
                      thickness: 0.3,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
