import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurante/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset('assets/lottieFoodDelivery.json', width: 300, height: 300),
          ),
        ],
      ) 
    
    ,nextScreen: const MyHomePage(),
    splashIconSize: 400,
    duration: 30000,
    backgroundColor: Colors.white,
    
    );
  }
}