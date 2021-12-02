import 'package:flutter/material.dart';
import 'package:flutterapp/student/login_student.dart';
import 'package:flutterapp/teacher/login_teacher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginTeacher(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.75,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 120,
                      child: Image.asset("assets/teacher.png"),
                    ),
                    const Text("TEACHER")
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginStudent(),
                  ),
                );
              },
              child: Container(
                color: Colors.red,
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 120,
                      child: Image.asset("assets/student1.png"),
                    ),
                    const Text("STUDENT")
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.75,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
