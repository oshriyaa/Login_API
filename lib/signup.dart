import 'package:flutter/material.dart';
import 'package:newapp/customfield.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade100,
        appBar: AppBar(
          title: Text('Sign-up'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'First Name',
                  fieldHint: 'Enter your first name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'Last Name',
                  fieldHint: 'Enter your last name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'Username',
                  fieldHint: 'Enter your username',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomField(
                  fieldLabel: 'Password',
                  fieldHint: 'Enter your password ',
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
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
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 120,
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
                          onPressed: () {},
                          child: const Text(
                            'Sign-up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
