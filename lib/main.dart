import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/landingpage/landing_page.dart';
import 'package:flutterapp/teacher/login_teacher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/tutor.gif',
        ),
        nextScreen: const LandingPage(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 2500,
        splashIconSize: 300,
      ),
    );
  }
}
