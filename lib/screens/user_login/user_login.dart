import 'dart:async';

import 'package:flutter/material.dart';
import '../../widgets/spinner.dart';
import '../Layout.dart';

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
    return Layout(Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 40.0),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Container(
              //   child: Text(
              //     "User name",
              //     style: TextStyle(color: Colors.white, fontSize: 20.0),
              //   ),
              // ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'User name',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow[700]),
                    )),
                onChanged: (String value) {
                  username = value;
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
              // Container(
              //   child: Text(
              //     "Password",
              //     style: TextStyle(color: Colors.white, fontSize: 20.0),
              //   ),
              // ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow[700]),
                    )),
                onChanged: (String value) {
                  password = value;
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(top: 10, bottom: 10)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow[700]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                child: Text("Sign in",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: _onLoginClick,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child:
                    Text('OR', textAlign: TextAlign.center, style: TextStyle()),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(top: 10, bottom: 10)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                child: Text("Login with Facebook",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                onPressed: _onLoginClick,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(top: 10, bottom: 10)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red[400]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                child: Text("Login with Google",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                onPressed: _onLoginClick,
              ),
            ],
          )),
        ),
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
