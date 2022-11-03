import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController _mail = TextEditingController();
  TextEditingController _password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _ispasswordvisible=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Form(
          key: _formkey,
          child: Column(children: [
            //Image(image: AssetImage('assets/images/maleicon.jpg')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _mail,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                   border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.black),
                 ),
                  hintText: "Enter your mail",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please add validate email";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _password,
                obscureText: !_ispasswordvisible,
                decoration: InputDecoration(
                  //suffixIcon:Icon(Icons.remove_red_eye),

                 // border: OutlineInputBorder(),
                 suffixIcon:GestureDetector(
                  onTap: () {
                    print("Click");
                    SetState()
                    {
                      _ispasswordvisible=!_ispasswordvisible;
                    }
                  },
                  child: Icon(Icons.remove_red_eye),
                 )

                 border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.black),
                 ),
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                 if(_formkey.currentState!.validate(){

                 })
                },
                child: Text("Log in"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
