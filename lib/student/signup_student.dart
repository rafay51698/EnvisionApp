import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
                  controller: nameController,
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
                  controller: emailController,
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
                  controller: passwordController,
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

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  sendData() {
    firebaseFirestore.collection('Student Data').add({
      'name': nameController.text,
      'email': emailController.text,
      'class': classController.text,
      'phone': phoneController.text,
      'area': areaController.text,
    });
  }

  signup() async {
    await auth.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }
}

Widget textf(
    BuildContext context, TextEditingController controller, String labelText) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    height: 50,
    width: MediaQuery.of(context).size.width * 0.7,
    child: (TextField(
      controller: controller,
      // onChanged: (email) {
      //   useremail = email;
      // },
      decoration: InputDecoration(
        labelText: labelText,
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
  );
}
