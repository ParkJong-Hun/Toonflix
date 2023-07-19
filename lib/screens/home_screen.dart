import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
