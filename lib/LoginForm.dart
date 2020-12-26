import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

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
        navigationBar: CupertinoNavigationBar(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          backgroundColor: Colors.black,
          middle: Text(
            "Log In",
            style: TextStyle(color: Colors.white),
          ),
        ),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                    child: CupertinoTextField(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFF453232),

                          // border: Border.all(color: ),
                          borderRadius: BorderRadius.circular(5.0)),
                      placeholder: "Phone number, username or email",
                      placeholderStyle: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                      autofillHints: [AutofillHints.username],
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
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
                          color: const Color(0xFF453232),
                          borderRadius: BorderRadius.circular(5.0)),
                      placeholder: "Password",
                      placeholderStyle: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                      autofillHints: [AutofillHints.password],
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
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
                              print("hello");
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
        ));
  }
}

// Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text("Login"),
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Center(
//             child: Form(
//           key: _formKey,
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Add TextFormFields and ElevatedButton here.
// Padding(
//   padding: EdgeInsets.only(
//       left: 50.0, right: 50.0, top: 5.0, bottom: 5.0),
//   child: TextFormField(
//       textAlign: TextAlign.center,
//       style: TextStyle(color: Colors.white),
//       decoration: new InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//               BorderSide(color: Colors.grey, width: 2.0),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide:
//               BorderSide(color: Colors.grey, width: 2.0),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.red, width: 2.0),
//         ),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.red, width: 2.0),
//         ),
//         fillColor: Colors.white,
//         labelText: "Username",
//         labelStyle: TextStyle(color: Colors.white),
//         contentPadding: EdgeInsets.all(10.0),
//       ),
//       validator: (val) {
//         if (val.isEmpty) {
//           return "This field cannot be empty";
//         }
//         return null;
//       }),
// ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       left: 50.0, right: 50.0, top: 5.0, bottom: 5.0),
//                   child: TextFormField(
//                       obscureText: true,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white),
//                       decoration: new InputDecoration(
//                         enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 2.0),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 2.0),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.red, width: 2.0),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.red, width: 2.0),
//                         ),
//                         fillColor: Colors.white,
//                         labelText: "Password",
//                         labelStyle: TextStyle(color: Colors.white),
//                         contentPadding: EdgeInsets.all(10.0),
//                       ),
//                       validator: (val) {
//                         if (val.isEmpty) {
//                           return "This field cannot be empty";
//                         }
//                         return null;
//                       }),
//                 ),
//                 TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     padding: EdgeInsets.all(5.0),
//                     primary: Colors.grey,
//                   ),
//                   onPressed: () {
//                     // Validate returns true if the form is valid, otherwise false.
//                     if (_formKey.currentState.validate()) {
//                       // If the form is valid, display a snackbar. In the real world,
//                       // you'd often call a server or save the information in a database.
//                       print("Gonna do stuff now...");
//                     }
//                   },
//                   child: Text('Submit'),
//                 )
//               ]),
//         )),
//       ),
//     );
