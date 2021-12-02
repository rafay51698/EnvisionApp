import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/student/home_student.dart';
import 'package:flutterapp/teacher/studennnttttt_copy.dart';

import 'package:flutterapp/theme/app_color.dart';
import 'login_teacher.dart';

class SignUpTeacher extends StatefulWidget {
  const SignUpTeacher({Key? key}) : super(key: key);

  @override
  _SignUpTeacherState createState() => _SignUpTeacherState();
}

class _SignUpTeacherState extends State<SignUpTeacher> {
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
          'Teacher Registration',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              animationTeacher(),
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
              textf(context, areaController, "Area"),
              textf(context, phoneController, "Phone Number"),
              textf(context, feesController, "Fees"),
              Container(
                // margin: const EdgeInsets.only(bottom: 10),
                width: 110,
                decoration: deco(),
                child: TextButton(
                  onPressed: () {
                    if (passwordController.text != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Studeennntttt(),
                        ),
                      );
                    } else {}
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
                      builder: (context) => const LoginTeacher(),
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
  TextEditingController feesController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  sendData() {
    firebaseFirestore.collection('Teacher Data').add({
      'name': nameController.text,
      'email': emailController.text,
      'fees': feesController.text,
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
