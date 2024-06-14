import 'package:absensipkl/presentation/pages/landing/landing_screen.dart';
import 'package:absensipkl/base/common/colors.dart';
import 'package:absensipkl/base/router/navigation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigation.replaceNamed(routeName: LandingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Image.asset(
          'assets/gif/splashscreen.gif',
          width: 300,
        ),
      ),
    );
  }
}
