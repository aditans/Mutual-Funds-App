import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wealth/Invest.dart';
import 'package:wealth/Logout_loading_screen.dart';
import 'package:wealth/Onboarding.dart';
import 'package:wealth/Startscreen.dart';
import 'package:wealth/loggin_loading_screen.dart';

import 'LoginPage.dart';
 class UserCheck extends StatelessWidget {
   const UserCheck({super.key});
 
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: StreamBuilder<User?>(
         stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context,snapshot){
           if(snapshot.hasData)
             {
               return LogginLoadingScreen();

             }
           else
             {
               return LoginPage();

             }
         },
       ),
     );
   }
 }
 