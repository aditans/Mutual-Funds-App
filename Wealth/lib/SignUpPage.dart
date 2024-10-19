import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wealth/LoginPage.dart';
import 'package:wealth/check_for_login.dart';
import 'package:wealth/globals.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class JoinButton extends StatelessWidget{
  const JoinButton ({super.key, required this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 100.0),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
              child: Text(
                "Join",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
          )
      ),
    );

  }
}

//code to just return a blank scaffold
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // controllers

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController= TextEditingController();
  final emailController= TextEditingController();

  Future signUserIn() async{
    if(passwordController.text.trim() == confirmPasswordController.text.trim() &&
        passwordController.text.trim().isNotEmpty &&
        confirmPasswordController.text.trim().isNotEmpty)
      {
        try{
          UserCredential userCred = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
          await userCred.user!.updateDisplayName(usernameController.text.trim());
          setState(() {
            userCredential=userCred;
          });
          //creating a new collection of Users->email-> in firestore//
          FirebaseFirestore.instance
              .collection('Users')
              .doc(userCred.user!.email)
              .set({
                 'initial_funds' : 100000,
                 'p_and_l':0,
                 'investments':0,
                 'badge':'1',
                 'current_value' : 0,
                 'sip_holdings' :[],
                 'one_time_holdings':[],
                 'p_and_l_history':[]
              });
          

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const UserCheck()), // The SignInPage or UserCheck page
                (Route<dynamic> route) => false, // This removes all previous routes from the stack
          );
        }
        on FirebaseAuthException catch (e)
        {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Sign-up failed : Error : ${e.message}'),
              backgroundColor: Colors.red[300],
            ),
          );
        }

      }
    else
      {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Confirm Password and Password must be same'),
            backgroundColor: Colors.red[300],
          ),
        );

      }

  }
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Stack(
            children: [
          // Background image with opacity
          Positioned.fill(
          child: Image.asset(
            'lib/icons/background.png', // Replace with your image path
            fit: BoxFit.cover, // Ensures the image fills the background
          ),
        ),
        // Foreground content
        Center(
            child : SingleChildScrollView(
              child: Column(

                children: [
                  const SizedBox(height: 50),

                  const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      letterSpacing: 7,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 75,
                    ),
                  ),

                  const SizedBox(height:100.0),

                  MyTextField(controller: usernameController, hintText: 'Create a Username', obscureText: false),

                  const SizedBox(height:25.0),

                  MyTextField(controller: emailController, hintText: 'Enter Email Address here', obscureText: false),

                  const SizedBox(height:25.0),

                  MyTextField(controller: passwordController, hintText: 'Create Password', obscureText: true),

                  const SizedBox(height:25.0),

                  MyTextField(controller: confirmPasswordController, hintText: 'Confirm Password', obscureText: true),

                  const SizedBox(height:25.0),

                  JoinButton(onTap: signUserIn),



                ],),
            )
        )]
    )

    ));
  }
}


