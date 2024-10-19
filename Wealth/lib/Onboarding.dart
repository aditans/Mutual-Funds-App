import 'package:flutter/material.dart';
import 'package:wealth/Learn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth/LoginPage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final user_email=FirebaseAuth.instance.currentUser?.email;
   signout() async{
     await FirebaseAuth.instance.signOut();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Center(child: Text("Welcome OnBoard $user_email")),
          TextButton(onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const Learn())), child: Text("continue"),),
          TextButton(onPressed:()=> signout(), child: Text("LOG OUT"),),
        ],
      ),
    );
  }
}
