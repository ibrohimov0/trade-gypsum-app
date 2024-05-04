import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './mian_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        duration: 2000,
        splash: Column(
          children: [
            Image.asset("assets/images/logo.png",fit: BoxFit.contain,height: 50,),
            SizedBox(height: 7,),
            const Text(
              "The BNBM",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
            ),
            )
          ]
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Color.fromARGB(255, 25, 24, 37),
      ),
    );
  }
}