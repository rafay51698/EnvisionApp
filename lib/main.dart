import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/landingpage/landing_page.dart';
import 'package:flutterapp/teacher/login_teacher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
