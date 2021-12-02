import 'package:flutter/material.dart';
import 'package:flutterapp/admin/signup_admin.dart';
import 'package:flutterapp/student/signup_student.dart';
import 'package:flutterapp/teacher/sign_up_teacher.dart';
import 'package:flutterapp/theme/app_color.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({Key? key}) : super(key: key);

  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  // ignore: prefer_typing_uninitialized_variables
  var userpass;
  // ignore: prefer_typing_uninitialized_variables

  var orgpass = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: primary,
        foregroundColor: white,
        title: const Text(
          'Admin Login',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              animationAdmin(),
              const SizedBox(
                height: 20,
              ),
              SimpleTextField('Username'),
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
                margin: const EdgeInsets.only(bottom: 10),
                width: 110,
                decoration: deco(),
                child: TextButton(
                  onPressed: () {},
                  // onPressed: () {
                  //   setState(() {
                  //     if (userpass == orgpass) {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => const LandingPage()));
                  //     } else {
                  //       showDialog(
                  //           context: context,
                  //           builder: (context) {
                  //             return const AlertDialog(
                  //               title: Text("Incorrect Password"),
                  //               content: Text("Please Try Again"),
                  //             );
                  //           });
                  //     }
                  //   });
                  // },
                  child: Row(
                    children: [
                      Icon(
                        Icons.login,
                        color: primary,
                      ),
                      Text(
                        " Login",
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
                        builder: (context) => const SignUpAdmin()),
                  );
                },
                child: Text(
                  "Don't have an account? Signup",
                  style: TextStyle(color: primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget SimpleTextField(label) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.7,
      child: (TextField(
        decoration: InputDecoration(
          labelText: label,
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
}

Widget animationAdmin() {
  return Container(
    margin: const EdgeInsets.only(top: 20, bottom: 20),
    child: Image.asset(
      'assets/admin.png',
      height: 200,
      width: 300,
    ),
  );
}

BoxDecoration deco() {
  return BoxDecoration(borderRadius: BorderRadius.circular(20));
}
