import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newapp/apiservice.dart';
import 'package:newapp/customfield.dart';
import 'package:newapp/dashboard.dart';
import 'package:newapp/login_model.dart';
import 'package:newapp/signup.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? username;
  String? password;

  final _formKey = GlobalKey<FormState>();
  late TextEditingController? controller = TextEditingController();
  LoginRequestModel? requestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'Username',
                  fieldHint: 'Enter your username',
                  save: (data) {
                    requestModel!.email = data;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'Password',
                  fieldHint: 'Enter your password',
                  save: (data) {
                    requestModel!.password = data;
                  },
                ),
              ),
              Text('Forgot Password?'),
              Container(
                width: 300,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.teal.shade900,
                    padding: const EdgeInsets.all(10.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    APIService();  
                  
                    // if (validateAndSave()!) {
                    //   print(requestModel!.toJson());
                    // }
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => Dashboard()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.teal.shade900,
                    padding: const EdgeInsets.all(10.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: const Text(
                    'Sign-Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // bool? validateAndSave() {
  //   final form = _formKey.currentState;
  //   if (form!.validate()) {
  //     form.save();
  //     return true;
  //   }
  //   return false;
  // }
}
