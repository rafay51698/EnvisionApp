import 'package:flutter/material.dart';
import 'package:flutterapp/student/home_student.dart';

import 'package:flutterapp/theme/app_color.dart';
import 'login_student.dart';

class SignUpStudent extends StatefulWidget {
  const SignUpStudent({Key? key}) : super(key: key);

  @override
  _SignUpStudentState createState() => _SignUpStudentState();
}

class _SignUpStudentState extends State<SignUpStudent> {
  var orgpass = "123456";
  // ignore: prefer_typing_uninitialized_variables
  var userpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        foregroundColor: white,
        title: const Text(
          'Student Registration',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              animationStudent(),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: (TextField(
                  // onChanged: (name) {
                  //   username = name;
                  // },
                  decoration: InputDecoration(
                    labelText: 'Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: (TextField(
                  // onChanged: (email) {
                  //   useremail = email;
                  // },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: (TextField(
                  onChanged: (password) {
                    userpass = password;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(width: 3, color: primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
              ),
              Container(
                // margin: const EdgeInsets.only(bottom: 10),
                width: 110,
                decoration: deco(),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeStudent(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.login,
                        color: primary,
                      ),
                      Text(
                        " Signup ",
                        style: TextStyle(color: primary),
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginStudent(),
                    ),
                  );
                },
                child: Text(
                  "Already have an account ? Login",
                  style: TextStyle(color: primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
