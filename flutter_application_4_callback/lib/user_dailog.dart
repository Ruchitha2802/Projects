import 'package:flutter/material.dart';

class AddUserDialog extends StatefulWidget {
  const AddUserDialog({super.key});

  @override
  State<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller) {
      return Container(
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38)),
          ),
          controller: controller,
        ),
      );
    }

    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var phnnumController = TextEditingController();

    return Container(
      height: 300,
      width: 400,
      child: Column(
        children: [
          Text('Add User'),
          buildTextfield('Username', usernameController),
          buildTextfield('Email', emailController),
          buildTextfield('Number', phnnumController),
          ElevatedButton(
            onPressed:(){}, 
          child: Text('Add User'),),
        ],
      ),
    );
  }
}
