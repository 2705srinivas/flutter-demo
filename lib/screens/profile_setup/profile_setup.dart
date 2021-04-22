import 'package:demo/models/question-list.dart';
import 'package:flutter/material.dart';
import '../../models/question-list.dart';
import '../../models/question.dart';
import './question.dart';
import './options.dart';

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
    return Scaffold(
        backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
                QuestionComponent(questionList.questions[index].question),
                Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
                Options(questionList.questions[index].options, (String value) {
                  setState(() {
                    optionSelected = value;
                  });
                }, optionSelected),
                Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (index > 0) {
                            setState(() {
                              index--;
                            });
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Text('Back')),
                    index == 4 ? _finish() : _next()
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _title() => Container(
        child: Text('Tell us about yourself', style: TextStyle(fontSize: 20.0)),
      );

  Widget _next() => ElevatedButton(
      onPressed: () {
        setState(() {
          optionSelected = "";
          index++;
        });
      },
      child: Text('Next'));

  Widget _finish() => ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/third');
      },
      child: Text('Finish'));
}
