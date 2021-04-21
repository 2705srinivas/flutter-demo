import 'package:flutter/material.dart';

const trainers = [
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
  {'name': 'srinivas', 'age': '26', 'yoe': '3'},
];

class TrainersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 40.0),
          child: ListView(
            children: [
              FloatingActionButton(
                  child: Icon(Icons.home),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }),
              Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
              ...trainers.map((trainer) => _listCard(trainer, context)).toList()
            ],
          ),
        ));
  }

  Widget _listCard(Map<String, Object> trainer, BuildContext context) =>
      GestureDetector(
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40.0,
                child: Text(trainer['name']),
              ),
              Container(
                alignment: Alignment.center,
                height: 40.0,
                child: Text(trainer['age']),
              ),
              Container(
                alignment: Alignment.center,
                height: 40.0,
                child: Text(trainer['yoe']),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/fourth');
        },
      );
}
