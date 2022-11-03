import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Practise Purpose",
          ),
        ),
        body: Container(
          child: Text("Hi Hello",
              style: TextStyle(
                fontSize: 50,
                backgroundColor: Colors.deepOrangeAccent,
              )),
        ),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}
