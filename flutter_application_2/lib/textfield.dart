import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoTextField extends StatefulWidget {
  @override
  _DemoTextField createState() => _DemoTextField();
}

class _DemoTextField extends State<DemoTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "UserName",
              ),
              cursorColor: Colors.red,
              maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Only Number Type",
               // hintStyle: TextStyle(fontStyle: FontStyle.italic),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Multiline",
              ),
              maxLines: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Border color",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3,color: Colors.orange),
                )
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
          )
        ],
      ),
    ); //; to statement (return))
  }
}
