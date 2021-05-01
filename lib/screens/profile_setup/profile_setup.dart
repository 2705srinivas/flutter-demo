import 'package:demo/models/question-list.dart';
import 'package:flutter/material.dart';
import '../../models/question-list.dart';
import '../../models/question.dart';
import '../Layout.dart';

class GetData {
  QuestionList questions;

  QuestionList fetchQuestions() {
    return questions = QuestionList([
      Question('What is your first question?', ['Option1', 'Option2']),
      Question('What is your second question? ', ['Option1', 'Option2']),
      Question('What is your third question?', ['Option1', 'Option2']),
      Question('What is your fourth question?', ['Option1', 'Option2']),
      Question('What is your fifth question?', ['Option1', 'Option2']),
    ]);
  }
}

class ProfileSetup extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}

class QuestionState extends State {
  QuestionList questionList;
  int index = 0;
  String optionSelected = "";
  @override
  void initState() {
    super.initState();
    this.questionList = GetData().fetchQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(),
            Text(
                'We want to know more about you. Please follow these next steps to complete the information.',
                style: TextStyle(color: Colors.white)),
            Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
            Container(
              padding: const EdgeInsets.only(left: 10),
              constraints: BoxConstraints(maxHeight: 200),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 180),
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(50)),
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.check_circle,
                            size: 40,
                            color: Colors.yellow[700],
                          ),
                        ),
                        Text('I am Inactive',
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 32)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Column(children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.circle,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text('I am Beginner',
                              style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32)),
                        ])),
                  ),
                  Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Column(children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.circle,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text('I am inactive',
                              style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35)),
                        ])),
                  )
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Card(
            //       child: Container(
            //         padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            //         width: 200,
            //         child:
            //             Text('I am inactive', style: TextStyle(fontSize: 40)),
            //       ),
            //     )
            //   ],
            // ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              if (index > 0) {
                                setState(() {
                                  index--;
                                });
                              } else {
                                Navigator.pop(context);
                              }
                            },
                            child: Text('Skip Intro',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black45))),
                        index == 4 ? _finish() : _next()
                      ],
                    )))
          ],
        ),
      ),
    ));
  }

  Widget _title() => Container(
        child: Text('About You',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
      );

  Widget _next() => ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.fromLTRB(40, 10, 40, 10)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow[700]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ))),
      onPressed: () {
        setState(() {
          optionSelected = "";
          index++;
        });
      },
      child: Text('Next', style: TextStyle(fontSize: 20)));

  Widget _finish() => ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.fromLTRB(40, 10, 40, 10)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow[700]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ))),
      onPressed: () {
        Navigator.pushNamed(context, '/third');
      },
      child: Text('Finish'));
}
