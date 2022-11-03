

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetStart")),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Text("Sign up"))
        ],
      )),
    );
  }
}
