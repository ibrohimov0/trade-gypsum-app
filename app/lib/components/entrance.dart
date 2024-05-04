import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './mian_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        duration: 3000,
        splash: Icons.home,
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.blue,
      ),
    );
  }
}