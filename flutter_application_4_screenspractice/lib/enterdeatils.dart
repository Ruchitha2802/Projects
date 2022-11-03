import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EnterDetails extends StatelessWidget {
  EnterDetails({super.key, required this.addDeatils});
  final Function(String e, String p) addDeatils;

  TextEditingController _Email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Details")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _Email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ("Email"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ("Password"),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              addDeatils(_Email.text, _password.text);
              Navigator.pop(context);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
