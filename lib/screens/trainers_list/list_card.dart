import 'package:flutter/material.dart';

Widget listCard(Map<String, Object> trainer, BuildContext context) =>
    GestureDetector(
      child: Card(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                Icons.account_circle_rounded,
                size: 40,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Text('${trainer['name']} \n${trainer["age"]} years'),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(trainer['yoe']),
            ),
          ],
        ),
      )),
      onTap: () {
        Navigator.pushNamed(context, '/fourth');
      },
    );
