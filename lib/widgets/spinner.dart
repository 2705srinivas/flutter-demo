import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xFF0E3311).withOpacity(0.5)),
      child: Image.asset(
        "assets/images/spinner.gif",
        width: 30.0,
      ),
    );
  }
}
