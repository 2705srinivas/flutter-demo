import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrainerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          // padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 40.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.yellow[50],
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(150),
                          bottomRight: const Radius.circular(150))),
                  child: Icon(Icons.account_circle_rounded,
                      size: 200, color: Colors.grey),
                ),
              ),
              Text('Srinivas', style: TextStyle(fontSize: 40.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.whatsappSquare,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  FaIcon(
                    FontAwesomeIcons.envelopeOpenText,
                    color: Colors.red,
                    size: 30.0,
                  )
                ],
              ),
              FloatingActionButton(
                  child: Icon(Icons.home),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
