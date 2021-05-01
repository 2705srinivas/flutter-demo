import 'package:flutter/material.dart';
import './dummy_data.dart';
import './list_card.dart';
import '../Layout.dart';

class TrainersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(Container(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
      child: ListView(
        children: [
          FloatingActionButton(
              child: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }),
          Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
          ...trainers.map((trainer) => listCard(trainer, context)).toList()
        ],
      ),
    ));
  }
}
