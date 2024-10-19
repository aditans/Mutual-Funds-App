import 'package:flutter/material.dart';
import 'package:wealth/Invest.dart';
import 'package:wealth/Learn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
class LogoutLoadingScreen extends StatefulWidget {
  const LogoutLoadingScreen({super.key});

  @override
  State<LogoutLoadingScreen> createState() => _LogoutLoadingScreenState();
}

class _LogoutLoadingScreenState extends State<LogoutLoadingScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds (or your desired time), then sign out the user.
    Future.delayed(const Duration(seconds: 2), () async {
      await FirebaseAuth.instance.signOut();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: LottieBuilder.asset("lib/json/Animation - 1728824522912.json"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Successfully Logged out....",style: TextStyle(fontSize: 20,),),
              ),
            ),
          ],
        ),
      ),
      nextScreen: LogoutLoadingScreen(),
      splashIconSize: 300,
      duration: 500,
    );
  }
}
