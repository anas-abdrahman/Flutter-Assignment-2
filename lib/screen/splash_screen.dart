import 'package:assignment_2/utils/app_route.dart';
import 'package:flutter/material.dart';
import '../widget/app_icon.dart';

class SplashScreen extends StatefulWidget {
  @override _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    splashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logoMalakat',
          child: AppIcons.logoMalakat,
        ),
      ),
    );
  }

  splashScreen() async {
    Future.delayed(Duration(seconds: 2)).whenComplete(() {
      AppRoute.loginScreen(context);
    });
  }

}
