import 'dart:async';

import 'package:flutter/material.dart';
import '../../widgets/spinner.dart';

class UserLogin extends StatefulWidget {
  @override
  UserLoginState createState() => UserLoginState();
}

class UserLoginState extends State {
  String username;
  String password;
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Text(
                        "User name",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white)),
                      onChanged: (String value) {
                        username = value;
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
                    Container(
                      child: Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                    TextField(
                      onChanged: (String value) {
                        password = value;
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
                    ElevatedButton(
                      child: Text("Login"),
                      onPressed: _onLoginClick,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Text("Sign in with Google"),
                      onPressed: _onLoginClick,
                    ),
                    ElevatedButton(
                      child: Text("Sign in with Facebook"),
                      onPressed: _onLoginClick,
                    )
                  ],
                )),
            login ? Spinner() : Container(),
          ],
        ));
  }

  void _onLoginClick() {
    setState(() {
      login = true;
      new Timer(const Duration(milliseconds: 1000), () {
        setState(() {
          login = false;
        });
        Navigator.pushNamed(context, '/second');
      });
    });
  }
}
