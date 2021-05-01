import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget body;

  Layout(this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: body,
    );
  }
}
