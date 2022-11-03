import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("login")),
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.black)),

                    
                  ),
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    } else if (!isValidEmail(value)) {
                      return "Please Enter Valid email";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: !_isPasswordvisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.update_sharp),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        print("click");
                        // _isPasswordvisible = !_isPasswordvisible;

                        setState(() {
                          _isPasswordvisible = !_isPasswordvisible;
                        });
                      },
                      child: Icon(Icons.remove_red_eye_outlined),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.black)),

                    //labelText: "Password", //focused border
                    // set more border style like disabledBorder
                  ),
                  controller: _passwordController,
                  validator: (value) {
                    final v = value ?? "";
                    if (v.isEmpty) {
                      return "Please Enter Password";
                    } else if (!isValidPassword(value ?? "")) {
                      return "Please Enter Valid Password";
                    }
                    return null;
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //
                    }
                  },
                  child: Text("Submit")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))
            ],
          ),
        ));
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.none,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          TextButton(
            onPressed: () {
              print("button Action");
              validateInputs();
            },
            child: Text("Log In"),
            //style: ButtonStyle(backgroundColor:),
          )
        ],
      ),
    );
  }*/

  //TextFormField

  bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool isValidPassword(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}')
        .hasMatch(password);
  }

  validateInputs() {
    if (_emailController.text.isEmpty) {
      showAlert("Please enter email");
    } else if (_passwordController.text.isEmpty) {
      showAlert("Please enter password");
    }
  }

  showAlert(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message),
            actions: [
              TextButton(
                onPressed: () {
                  // print("button Action");
                  Navigator.pop(context);
                },
                child: Text("ok"),
                //style: ButtonStyle(backgroundColor:),
              )
            ],
          );
        });
  }
}