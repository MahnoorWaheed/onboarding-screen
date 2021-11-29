import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loss_belly/onboarding_screen/onboardingpage.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSplashScreen(
              duration: 1000,
               splashIconSize: 1000,
              splash: Image.asset("assets/images/pandabeargym.jpg"),
              nextScreen: const OnboardingPage(),
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.fade,
              //backgroundColor: Colors.blue
              
            ),
          const Positioned(
            bottom: 100,
            left: 20,
            child: Text("Hey!...\nLeshh Start to Lose Weight", 
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color:Colors.black,fontFamily: 'Montserrat'),
            ),
          )
        ],
      ),
    );
  }
} 
