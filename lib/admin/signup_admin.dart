import 'package:flutter/material.dart';
import 'package:flutterapp/student/home_student.dart';

import 'package:flutterapp/theme/app_color.dart';
import 'login_admin.dart';

class SignUpAdmin extends StatefulWidget {
  const SignUpAdmin({Key? key}) : super(key: key);

  @override
  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
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
          'Admin Registration',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              animationAdmin(),
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
                      builder: (context) => const LoginAdmin(),
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
