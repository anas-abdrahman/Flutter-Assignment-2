import 'package:assignment_2/screen/home_screen.dart';
import 'package:assignment_2/screen/login_screen.dart'; //import 'package:assignment_1/screen/splash_screen.dart';
import 'package:assignment_2/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {

  static splashScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SplashScreen(),
      ),
    );
  }

  static loginScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 1200),
        pageBuilder: (i, ii, iii) => LoginScreen(),
      ),
    );
  }

  static homeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
  
}
